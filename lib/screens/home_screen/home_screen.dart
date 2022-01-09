import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/components/post_card.dart';
import 'package:my_twitter/models/post.dart';

import 'bloc/home_screen_bloc.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenBloc _homeScreenBloc;
  int? id;

  Widget viewToReturn = Container();

  @override
  void didChangeDependencies() {
    _homeScreenBloc = BlocProvider.of<HomeScreenBloc>(context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (BuildContext context, HomeScreenState state) {
            state.when(
              initial: () {
                _homeScreenBloc.add(HomeScreenEvent.started());
                viewToReturn = const Center(
                  child: CircularProgressIndicator(),
                );
              },
              showPosts: (List<Post> postsToShow, String postsToShowString) {
                viewToReturn = _showPostsBuilder(postsToShow);
              },
              errorLoading: () {
                viewToReturn = _errorLoadingBuilder();
              },
            );

            return viewToReturn;
          },
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }

  Widget _showPostsBuilder(List<Post> postsToShow) {
    return LazyLoadScrollView(
      scrollOffset: (MediaQuery.of(context).size.height * 0.7).toInt(),
      child: RefreshIndicator(
        onRefresh: _pullRefresh,
        child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: postsToShow.length,
          itemBuilder: (BuildContext context, int index) {
            if (index != postsToShow.length) {
              Post post = postsToShow[index];
              return PostCard(
                post: post,
                index: index,
                onLikeTap: () {
                  _homeScreenBloc.add(HomeScreenEvent.changeLikeStatus(post.likeStatus ?? LikeStatus.inactive, post.id));
                },
              );
            }
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          },

        ),
      ),
      onEndOfPage: () {
        _homeScreenBloc.add(HomeScreenEvent.loadMore());
      },
    );
  }

  Widget _errorLoadingBuilder() {
    return Center(
      child: GestureDetector(
        onTap: () {
          _homeScreenBloc.add(HomeScreenEvent.started());
        },
        child: Icon(
          Icons.replay_outlined,
        ),
      ),
    );
  }

  Future<void> _pullRefresh() async {
    return Future.delayed(
        Duration(seconds: 1),
        (){
          _homeScreenBloc.add(HomeScreenEvent.refresh());
        }
    );
  }
}
