import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:my_twitter/models/like.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'package:my_twitter/utils/constants.dart';
import 'package:my_twitter/utils/functions.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

Dio dio = Dio();

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState>{
  final AuthService _authService;


  HomeScreenBloc() : _authService = AuthService(),super(_Initial());



  var logger = Logger();

  int page = 1, perPage = 2;
  List<Post> postsToShow = [];
  String requestUrl = '${Constants.apiBaseUrl}posts';

  String likeUrl = '${Constants.apiBaseUrl}posts/like';



  Map<String, dynamic> get parameters => {
    'page': page,
    'perPage': perPage,
  };

  var likeParameters = Map<String, dynamic>();

  void buildParameters(String postId, String userId, String status){
    likeParameters['postId'] = postId;
    likeParameters['userId'] = userId;
    likeParameters['likeStatus'] = status;
  }




  Future<void> parseResponse(Response result) async {
    final postsList = result.data;

    for (var post in postsList) {
      var contain = postsToShow.where((element) => element.id == post['id']);

      Post p = await buildPost(post);

      if(contain.isNotEmpty){
        int i = postsToShow.indexOf(contain.first);
        postsToShow.removeAt(i);
        postsToShow.insert(i, p);
      }
      else{
        postsToShow.add(p);
      }

    }
  }



  Future<HomeScreenState> changeLikeStatus(_ChangeLikeStatus event) async {
    if(await _authService.isSignedIn()){

      log('asds');

      LikeStatus currentLikeStatus = event.currentLikeStatus;
      LikeStatus newLikeStatus;


      Response response;
   
      if (currentLikeStatus == LikeStatus.inactive) {
        newLikeStatus = LikeStatus.active;
        
      } else {
        newLikeStatus = LikeStatus.inactive;
      }

      buildParameters(event.postId, _authService.getUserEmail()!, SharedFunctions.convertStatusToString(newLikeStatus));
      response = await dio.post(
        likeUrl,
        data: jsonEncode(likeParameters),
      );




      if(response.statusCode == 200) {
        log('success');
        String postId = event.postId;
        int indexToReplace = postsToShow.indexWhere((element) =>
        element.id == postId);

        Post newPost = postsToShow[indexToReplace].copyWith(
          likeStatus: newLikeStatus,
        );

        postsToShow[indexToReplace] = newPost;
        Like like = new Like(
          userId: _authService.getUserEmail()!
        );
        if(newLikeStatus == LikeStatus.active){
          postsToShow[indexToReplace].likes.add(like);
        }
        else{
          postsToShow[indexToReplace].likes.remove(like);
        }
      }
      return _ShowPosts(postsToShow, postsToShow.toString());;

    }
    else{
      return _Unauthicated();
    }


  }

  HomeScreenState processRefreshPost(Post post, LikeStatus likeStatus){
    log(likeStatus.toString());
    Post newPost = post.copyWith(
      likeStatus: likeStatus,
    );
    int indexToReplace = postsToShow.indexWhere((element) =>
    element.id == newPost.id);
    postsToShow[indexToReplace] = newPost;
    return _ShowPosts(postsToShow, postsToShow.toString());
  }


  Future<HomeScreenState> processLoadSignal() async {
    try {
      page=1;
      postsToShow.clear();
      final result = await dio.get(
        requestUrl,
        queryParameters: parameters,
      );

      parseResponse(result);
      return _ShowPosts(postsToShow, postsToShow.toString());

    } catch (e) {
      print(e);
      return _ErrorLoading();
    }
  }

  Future<HomeScreenState> processLoadMore() async {
    try {
      final result = await dio.get(
        requestUrl,
        queryParameters: parameters,
      );

      parseResponse(result);
      return _ShowPosts(postsToShow, postsToShow.toString());

    } catch (e) {
      print(e);
      return _ErrorLoading();
    }
  }



  @override
  Stream<HomeScreenState> mapEventToState(
      HomeScreenEvent event,
      ) async* {
    if (event is _Started) {
      yield (await processLoadSignal());
    }

    if (event is _ChangeLikeStatus) {
      yield await changeLikeStatus(event);
    }

    if (event is _LoadMore) {
      page += 1;

      yield await processLoadMore();
    }

    if(event is _Refresh){
      page = 1;
      yield await processLoadSignal();
    }

    if(event is _RefreshPost){
      yield processRefreshPost(event.post, event.currentLikeStatus);
    }
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
}
