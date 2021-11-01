
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_twitter/components/post_card.dart';
import 'package:my_twitter/models/post_model.dart';

import 'mvvm.dart';





class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class HomeModel extends BaseModel {
  Map<String, dynamic> _parameters(int page) => {
    'page': page,
    'per_page': 4,
    'client_id': '7lt6kKGSPBmtXj-HtuIG3r1Y6JoI_AZq9BAc77IWj_s',
  };

  //TODO get posts
  Future? getPosts(int page) => null;
//      dio.get(
//    '${Constants.apiBaseUrl}photos',
//    queryParameters: _parameters(page),
//  );
}

class HomeRepo extends BaseRepo<HomeModel> {
  Stream<List<PostModel>?> get imagesToShowStream => appStore.updatesFor((state) => state.postsToShow);
  int currentPage = 0;

  List<PostModel> parseResponse(Response result) {
    final postList = result.data;

    final postsToShow = List<PostModel>.from(store.state.postsToShow ?? <PostModel>[]);

    for (var post in postList) {
      final similarImage = postsToShow.where((element) => element.id == post['id']).toList();

      if (similarImage.length != 0) {
        continue;
      }

      postsToShow.add(
        PostModel(
          id: post['id'],
          imageUrl: post['urls']['small'],
          text: "text", //TODO get text from response
          likeStatus: LikeStatus.notLiked,
        ),
      );
    }

    return postsToShow;
  }

  void loadImages() async {
    final result = await model.getPosts(currentPage);

    currentPage += 1;

    appStore.updateState(appStore.state.copyWith(postsToShow: parseResponse(result)));
  }
}

class HomeViewModel extends BaseViewModel<HomeRepo, HomeModel> {
  void updateLikeStatus(LikeStatus currentStatus, String id) {
    LikeStatus newLikeStatus;

    if (currentStatus == LikeStatus.notLiked) {
      newLikeStatus = LikeStatus.liked;
    } else {
      newLikeStatus = LikeStatus.notLiked;
    }

    final posts = List<PostModel>.from(appStore.state.postsToShow ?? <PostModel>[]);

    int indexToReplace = appStore.state.postsToShow?.indexWhere((element) => element.id == id) ?? -1;

    if (indexToReplace == -1) {
      return;
    }

    PostModel newPost = posts[indexToReplace].copyWith(
      likeStatus: newLikeStatus,
    );

    posts[indexToReplace] = newPost;

    appStore.updateState(appStore.state.copyWith(postsToShow: posts));
  }
}




class _HomeScreenState extends BaseView<HomeScreen, HomeRepo, HomeModel, HomeViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<List<PostModel>?>(
          stream: repo.imagesToShowStream,
          builder: (BuildContext context,
              AsyncSnapshot<List<PostModel>?> imagesSnapshot) {
            if (!imagesSnapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (imagesSnapshot.hasError) {
              // TODO
            }

            return _showPostsBuilder(imagesSnapshot.data ?? []);
          },
        ),
      ),
    );
  }

  Widget _showPostsBuilder(List<PostModel> postToShow) {
    return LazyLoadScrollView(
      scrollOffset: (MediaQuery
          .of(context)
          .size
          .height * 0.7).toInt(),
      child: ListView.builder(
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: postToShow.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index != postToShow.length) {
            PostModel post = postToShow[index];

            return PostCard(
              index: index,
              post: post,
              onLikeTap: () {
                viewModel.updateLikeStatus(
                    post.likeStatus ?? LikeStatus.notLiked, post.id);
              },
            );
          } else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
      onEndOfPage: () {
        repo.loadImages();
      },
    );
  }

  @override
  HomeModel createModel() {
    // TODO: implement createModel
    throw UnimplementedError();
  }

  @override
  HomeRepo createRepo() {
    // TODO: implement createRepo
    throw UnimplementedError();
  }

  @override
  HomeViewModel createViewModel() {
    // TODO: implement createViewModel
    throw UnimplementedError();
  }

  @override
  void executeOnStart() {
    // TODO: implement executeOnStart
  }


}
