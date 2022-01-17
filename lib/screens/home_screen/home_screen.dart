import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/components/post_card.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';
import 'package:my_twitter/screens/sign_up_screen/sign_up_screen.dart';

import 'bloc/home_screen_bloc.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenBloc _homeScreenBloc;
  int? id;

  Widget viewToReturn = Container();

  final int navigationIndex = 0;

  @override
  void dispose() {
    _homeScreenBloc.close();
    super.dispose();
  }

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
                log('initial');
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
              unauthicated: (){
                viewToReturn = _buildSignInPopUp();
              }
            );

            return viewToReturn;
          },
        ),
      ),
      bottomNavigationBar: Footer(index: navigationIndex),
    );
  }

  Widget _showPostsBuilder(List<Post> postsToShow) {
    return LazyLoadScrollView(
      scrollOffset: (MediaQuery.of(context).size.height * 0.7).toInt(),
      child: RefreshIndicator(
        onRefresh: _pullRefresh,
        child: ListView.builder(
          padding: EdgeInsets.only(
            top: 10
          ),
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: postsToShow.length,
          itemBuilder: (BuildContext context, int index) {
            if (index != postsToShow.length) {
              Post post = postsToShow[index];
              return PostCard(
                post: post,
                index: index,
                navigationIndex: navigationIndex,
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

  Widget _buildSignInPopUp() {
    return AlertDialog(
      title: Text('Вы не вошли в систему'),
      actions: [
        ElevatedButton(
          onPressed: () {
            _homeScreenBloc.add(HomeScreenEvent.started());
          },
          child: Text('Понятно'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false, pageBuilder: (_, __, ___) => SignInScreen()),
            );
          },
          child: Text('Войти'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false, pageBuilder: (_, __, ___) => SignUpScreen()),
            );
          },
          child: Text('Зарегистрироваться'),
        ),
      ],
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
