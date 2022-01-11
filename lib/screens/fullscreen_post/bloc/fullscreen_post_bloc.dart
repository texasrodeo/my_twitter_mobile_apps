

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/models/comment.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'package:my_twitter/utils/constants.dart';

import '../../../main.dart';

part 'fullscreen_post_event.dart';
part 'fullscreen_post_state.dart';
part 'fullscreen_post_bloc.freezed.dart';

Dio dio = Dio();

class FullscreenPostBloc extends Bloc<FullscreenPostEvent, FullscreenPostState>{

  final AuthService _authService;

  FullscreenPostBloc() : _authService = AuthService(), super(_Initial());

  late Post postToShow;
  late List<Comment> postComments = [];

  int page = 1, perPage = 4;
  String requestUrl = '${Constants.apiBaseUrl}comments/post';
  String addCommentUrl = '${Constants.apiBaseUrl}comments/add';

  var parameters = Map<String, dynamic>();

  var addCommentparams = Map<String, dynamic>();

  void buildAddCommentParams(String postId, String text, String authorId){
    addCommentparams['postId'] = postId;
    addCommentparams['text'] = text;
    addCommentparams['authorId'] = authorId;
  }

  void buildParameters(String postId, String page, String perPage){
    parameters['postId'] = postId;
    parameters['page'] = page;
    parameters['perPage'] = perPage;
  }

  Future<FullscreenPostState> processLoadEvent(_Started event) async {
    postToShow = event.post;
    buildParameters(event.post.id, this.page.toString(), this.perPage.toString());
    log(parameters.toString());
    final result = await dio.get(
      requestUrl,
      queryParameters: parameters,
    );

    parseResponse(result);

    return _ShowPost(postToShow, postToShow.toString());
  }

  Future<FullscreenPostState> loadMoreComments() async {

    buildParameters(postToShow.id, this.page.toString(), this.perPage.toString());
    log(parameters.toString());
    final result = await dio.get(
      requestUrl,
      queryParameters: parameters,
    );

    parseResponse(result);

    return _ShowPost(postToShow, postToShow.toString());
  }

  void parseResponse(Response result) {
    log(result.toString());
    final commentsList = result.data;

    log(commentsList.toString());
    for (var comment in commentsList) {
      var contain = postComments.where((element) =>
          element.id == comment['id']);
      if (contain.isNotEmpty) {
        int i = postComments.indexOf(contain.first);
        postComments.removeAt(i);
        postComments.insert(i, Comment(
            text: comment['text'],
            id: comment['id'],
            author: User(
                id: comment['author']['id'],
                username: comment['author']['username'],
                imageUrl: comment['author']['avatarUrl'],
                phone: comment['author']['phone']
            )
        )
        );
      }
      else {
        postComments.add(
          Comment(
              text: comment['text'],
              id: comment['id'],
              author: User(
                  id: comment['author']['id'],
                  username: comment['author']['username'],
                  imageUrl: comment['author']['avatarUrl'],
                  phone: comment['author']['phone']
              )
          ),
        );
      }
    }
    log(postComments.length.toString());
  }

  FullscreenPostState changeLikeStatus() {
    final currentLikeStatus = postToShow.likeStatus ?? LikeStatus.inactive;

    if (navigatorKey.currentState == null) {
      return _ErrorLoading();
    }

    BlocProvider.of<HomeScreenBloc>(navigatorKey.currentState!.context).add(
      HomeScreenEvent.changeLikeStatus(currentLikeStatus, postToShow.id),
    );

    LikeStatus newLikeStatus;

    if (currentLikeStatus == LikeStatus.inactive) {
      newLikeStatus = LikeStatus.active;
    } else {
      newLikeStatus = LikeStatus.inactive;
    }

    postToShow = postToShow.copyWith(
      likeStatus: newLikeStatus,
    );

    return _ShowPost(postToShow, postToShow.toString());
  }

  Future<FullscreenPostState> addComment(_AddComment event) async {
      String comment = event.text;

      try {


        buildAddCommentParams(postToShow.id, comment, _authService.getUserEmail()!);
        Response response = await dio.post(
          addCommentUrl,
          data: jsonEncode(addCommentparams),
        );


        if(response.statusCode == 200){
          return _Initial();
        }
        else{
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

    if (event is _ChangeLikeStatus) {
      yield changeLikeStatus();
    }

    if (event is _LoadMoreComments) {
      page += 1;

      yield await loadMoreComments();
    }

    if(event is _AddComment){
      yield await addComment(event);
    }
  }

}
