import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/models/comment.dart';
import 'package:my_twitter/models/like.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'package:my_twitter/utils/constants.dart';
import 'package:my_twitter/utils/functions.dart';

part 'fullscreen_post_bloc.freezed.dart';
part 'fullscreen_post_event.dart';
part 'fullscreen_post_state.dart';

Dio dio = Dio();

class FullscreenPostBloc
    extends Bloc<FullscreenPostEvent, FullscreenPostState> {
  final AuthService _authService;

  FullscreenPostBloc()
      : _authService = AuthService(),
        super(_Initial());

  late Post postToShow;
  late List<Comment> postComments = [];

  int page = 1, perPage = 10;
  String getPostUrl = '${Constants.apiBaseUrl}posts/post';

  String requestUrl = '${Constants.apiBaseUrl}comments/post';
  String addCommentUrl = '${Constants.apiBaseUrl}comments/add';

  var parameters = Map<String, dynamic>();

  var addCommentparams = Map<String, dynamic>();

  var getPostParams = Map<String, dynamic>();

  void buildGetPostParams(String postId){
    getPostParams['id'] = postId;
  }

  void buildAddCommentParams(String postId, String text, String authorId) {
    addCommentparams['postId'] = postId;
    addCommentparams['text'] = text;
    addCommentparams['authorId'] = authorId;
  }

  void buildParameters(String postId, String page, String perPage) {
    parameters['postId'] = postId;
    parameters['page'] = page;
    parameters['perPage'] = perPage;
  }

  String likeUrl = '${Constants.apiBaseUrl}posts/like';


  var likeParameters = Map<String, dynamic>();

  void buildLikeParameters(String postId, String userId, String status){
    likeParameters['postId'] = postId;
    likeParameters['userId'] = userId;
    likeParameters['likeStatus'] = status;
  }

  Future<FullscreenPostState> processLoadEvent(_Started event) async {
    postToShow = event.post;
    buildParameters(
        event.post.id, this.page.toString(), this.perPage.toString());
    final result = await dio.get(
      requestUrl,
      queryParameters: parameters,
    );

    parseResponse(result);

    return _ShowPost(postToShow, postToShow.toString());
  }

  Future<FullscreenPostState> processLoadEventForPostId(_StartedWithPostId event) async {
    String postId = event.postId;
    buildGetPostParams(postId);
    final result = await dio.get(
      getPostUrl,
      queryParameters: getPostParams,
    );

    parsePostResponse(result);

    buildParameters(
        event.postId, this.page.toString(), this.perPage.toString());
    final result2 = await dio.get(
      requestUrl,
      queryParameters: parameters,
    );

    parseResponse(result2);

    return _ShowPost(postToShow, postToShow.toString());
  }

  Future<FullscreenPostState> loadMoreComments() async {
    buildParameters(
        postToShow.id, this.page.toString(), this.perPage.toString());
    final result = await dio.get(
      requestUrl,
      queryParameters: parameters,
    );

    parseResponse(result);

    return _ShowPost(postToShow, postToShow.toString());
  }

  void parsePostResponse(Response result) async{
    final p = result.data;
    Post post = await buildPost(p);
    postToShow = post;
  }

  Future<Post> buildPost(post) async {
    List<Like> likes = [];
    for(var l in post['likes']){
      Like like = Like(
          userId: l['userId']
      );
      likes.add(like);
    }
    LikeStatus likeStatus;
    if(await _authService.isSignedIn()){
      if(isPostLikedByUser(likes, _authService.getUserEmail()!)){
        likeStatus = LikeStatus.active;
      }
      else{
        likeStatus = LikeStatus.inactive;
      }
    }
    else{
      likeStatus = LikeStatus.inactive;
    }

    return Post(
        text: post['text'],
        imageUrl: post['imageUrl'],
        id: post['id'],
        author: User(
            id: post['author']['id'],
            username: post['author']['username'],
            imageUrl: post['author']['avatarUrl'],
            phone: post['author']['phone']
        ),
        likes: likes,
        likeStatus: likeStatus
    );
  }

  bool isPostLikedByUser(List<Like> likes, String userId){
    bool res = false;
    for(var l in likes){
      if(l.userId == userId){
        res = true;
        break;
      }
    }
    return res;

  }

  void parseResponse(Response result) {
    final commentsList = result.data;
    for (var comment in commentsList) {
      var contain =
          postComments.where((element) => element.id == comment['id']);
      if (contain.isNotEmpty) {
        int i = postComments.indexOf(contain.first);
        postComments.removeAt(i);
        postComments.insert(
            i,
            Comment(
                text: comment['text'],
                id: comment['id'],
                author: User(
                    id: comment['author']['id'],
                    username: comment['author']['username'],
                    imageUrl: comment['author']['avatarUrl'],
                    phone: comment['author']['phone'])));
      } else {
        postComments.add(
          Comment(
              text: comment['text'],
              id: comment['id'],
              author: User(
                  id: comment['author']['id'],
                  username: comment['author']['username'],
                  imageUrl: comment['author']['avatarUrl'],
                  phone: comment['author']['phone'])),
        );
      }
    }
  }

  Future<FullscreenPostState> changeLikeStatus(_ChangeLikeStatus event) async {
    if (await _authService.isSignedIn()) {
      LikeStatus currentLikeStatus = event.currentLikeStatus;
      LikeStatus newLikeStatus;

      Response response;

      if (currentLikeStatus == LikeStatus.inactive) {
        newLikeStatus = LikeStatus.active;
      } else {
        newLikeStatus = LikeStatus.inactive;
      }

      buildLikeParameters(event.postId, _authService.getUserEmail()!,
          SharedFunctions.convertStatusToString(newLikeStatus));
      response = await dio.post(
        likeUrl,
        data: jsonEncode(likeParameters),
      );

      if (response.statusCode == 200) {
//        log('success');

        Post newPost = postToShow.copyWith(
          likeStatus: newLikeStatus,
        );
        log(postToShow.likes.length.toString());

        postToShow = newPost;
        log(postToShow.likes.length.toString());
        Like like = new Like(userId: _authService.getUserEmail()!);
        if (newLikeStatus == LikeStatus.active) {
          log(postToShow.likes.length.toString());
          postToShow.likes.add(like);
        } else {
          postToShow.likes.remove(like);
        }
      }

      return _ShowPost(postToShow, postToShow.toString());

    } else {
      return _Unauthicated();
    }
  }

  Future<FullscreenPostState> addComment(_AddComment event) async {
    String comment = event.text;

    try {
      buildAddCommentParams(
          postToShow.id, comment, _authService.getUserEmail()!);
      Response response = await dio.post(
        addCommentUrl,
        data: jsonEncode(addCommentparams),
      );

      if (response.statusCode == 200) {
        return _Initial();
      } else {
        return _ErrorLoading();
      }
    } catch (e) {
      print(e);
      return _ErrorLoading();
    }
  }

  @override
  Stream<FullscreenPostState> mapEventToState(
    FullscreenPostEvent event,
  ) async* {
    if (event is _Started) {
      yield await processLoadEvent(event);
    }

    if(event is _StartedWithPostId) {
      yield await processLoadEventForPostId(event);
    }

    if (event is _ChangeLikeStatus) {
      yield await changeLikeStatus(event);
    }

    if (event is _LoadMoreComments) {
      page += 1;

      yield await loadMoreComments();
    }

    if (event is _AddComment) {
      yield await addComment(event);
    }
  }
}
