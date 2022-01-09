import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/utils/constants.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

Dio dio = Dio();

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState>{
  HomeScreenBloc() : super(_Initial());

  var logger = Logger();

  int page = 1, perPage = 2;
  List<Post> postsToShow = [];
  String requestUrl = '${Constants.apiBaseUrl}posts';


  Map<String, dynamic> get parameters => {
    'page': page,
    'perPage': perPage,
  };


  void parseResponse(Response result) {
    final postsList = result.data;

    for (var post in postsList) {
      var contain = postsToShow.where((element) => element.id == post['id']);
      if(contain.isNotEmpty){
        int i = postsToShow.indexOf(contain.first);
        postsToShow.removeAt(i);
        postsToShow.insert(i, Post(
            text: post['text'],
            imageUrl: post['imageUrl'],
            id: post['id'],
            author: User(
                id: post['author']['id'],
                username: post['author']['username'],
                imageUrl: post['author']['avatarUrl'],
                phone: post['author']['phone']
            ),
            likeStatus: LikeStatus.inactive
        )
        );
      }
      else{
        postsToShow.add(
          Post(
              text: post['text'],
              imageUrl: post['imageUrl'],
              id: post['id'],
              author: User(
                  id: post['author']['id'],
                  username: post['author']['username'],
                  imageUrl: post['author']['avatarUrl'],
                  phone: post['author']['phone']
              ),
              likeStatus: LikeStatus.inactive
          ),
        );
      }

    }
  }

  HomeScreenState changeLikeStatus(_ChangeLikeStatus event) {
    LikeStatus currentLikeStatus = event.currentLikeStatus;
    LikeStatus newLikeStatus;

    if (currentLikeStatus == LikeStatus.inactive) {
      newLikeStatus = LikeStatus.active;
    } else {
      newLikeStatus = LikeStatus.inactive;
    }

    String postId = event.postId;
    int indexToReplace = postsToShow.indexWhere((element) => element.id == postId);

    Post newPost = postsToShow[indexToReplace].copyWith(
      likeStatus: newLikeStatus,
    );

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
      yield changeLikeStatus(event);
    }

    if (event is _LoadMore) {
      page += 1;

      yield await processLoadMore();
    }

    if(event is _Refresh){
      page = 1;
      yield await processLoadSignal();
    }
  }
}
