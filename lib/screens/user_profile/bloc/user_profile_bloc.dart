
import 'dart:developer';

import 'package:logger/logger.dart';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/models/main_user_details.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/utils/constants.dart';
import 'package:my_twitter/services/auth/auth_service.dart';

part 'user_profile_state.dart';
part 'user_profile_event.dart';
part 'user_profile_bloc.freezed.dart';

Dio dio =  Dio();

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState>{
    final AuthService _authService;

    final String homeScreenRoute =  "/Home";
    final String userSettingsRoute =  "/Settings";

    UserProfileBloc(): _authService = AuthService(),super(_Initial());

    int page = 1, perPage = 1;

    late User user;
    late int postsCount;

    late MainUserDetails userDetails;

    List<Post> postsToShow = [];

//    String getUserDataUrl = '${Constants.apiBaseUrl}users/user';
    String getUserPostsUrl = '${Constants.apiBaseUrl}posts/user';
    String getPostsCountUrl = '${Constants.apiBaseUrl}posts/user/count';
    String getUserUrl = '${Constants.apiBaseUrl}users/user';

    Map<String, dynamic> get postsParameters => {
        'username': userDetails.email,
        'page': page,
        'perPage': perPage,
    };

    Map<String, dynamic> get userParameters => {
        'username': userDetails.email,
    };

    Future<UserProfileState> processLoadEvent(_Started event) async {
        bool isSignedIn = await _authService.isSignedIn();
        if(isSignedIn){
            userDetails= MainUserDetails(
                email: _authService.getUserEmail()!
            );
            return processLoadSignal();
        }
        else{
            return _Unauthicated();
        }
    }

    Future<UserProfileState> processLoadSignal() async {
        try {
            log("getting user data");
            final userResult = await dio.get(
                getUserUrl,
                queryParameters: userParameters,
            );

            user = User(
                id: userResult.data['id'],
                username: userResult.data['username'],
                imageUrl: userResult.data['avatarUrl']
            );
            log("getting user posts");
            final result = await dio.get(
                getUserPostsUrl,
                queryParameters: postsParameters,
            );

            parseResponse(result);

            log("getting posts count");
            final userPostsCountResult = await dio.get(
                getPostsCountUrl,
                queryParameters: userParameters
            );
            postsCount = userPostsCountResult.data;
            log('posts count : $postsCount');
            return _ShowProfile(user,postsToShow, postsToShow.toString());

        } catch (e) {
            print(e);
            return _ErrorLoading();
        }
    }

    void processSignOut(){
        _authService.signOut();
    }


    void parseResponse(Response result) {
        final postsList = result.data;

        for (var post in postsList) {
            final similarPost = postsToShow.where((element) => element.id == post['id']).toList();

            if (similarPost.length != 0) {
                continue;
            }

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

    UserProfileState signOut(){
        _authService.signOut();
        return _Unauthicated();
    }

    UserProfileState changeLikeStatus(_ChangeLikeStatus event) {
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

        return _ShowProfile(user, postsToShow, postsToShow.toString());
    }

    @override
    Stream<UserProfileState> mapEventToState(
        UserProfileEvent event,
        ) async* {
        if (event is _Started) {
            yield (await processLoadEvent(event));
        }

        if (event is _ChangeLikeStatus) {
            yield changeLikeStatus(event);
        }

        if (event is _LoadMore) {
            page += 1;

            yield await processLoadSignal();
        }

        if (event is _SignOut){
            yield signOut();
        }
    }

}
