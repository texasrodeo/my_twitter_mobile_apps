import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/components/post_card.dart';
import 'package:my_twitter/components/user_card.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';
import 'package:my_twitter/screens/sign_up_screen/sign_up_screen.dart';
import 'package:my_twitter/screens/user_profile/bloc/user_profile_bloc.dart';
import 'package:my_twitter/screens/user_settings_screen/user_settings_screen.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'package:my_twitter/utils/functions.dart';

class UserProfileScreen extends StatefulWidget {
  final User? user;

  const UserProfileScreen({
    Key? key,
    required this.user
  }) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}


class _UserProfileState extends State<UserProfileScreen> {
  late UserProfileBloc _userProfileBloc;
  int? id;


  final AuthService authService = AuthService();

  Widget viewToReturn = Container();

  final int navigationIndex=2;

  bool isSignedIn = true;

  @override
  void dispose() {
    _userProfileBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    if (widget.user == null) {
      return Scaffold(
          appBar: isSignedIn ? AppBar(
        backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 30,
            iconTheme: IconThemeData(
                color: Colors.black,

            ),
          ) : null,
        body: BlocProvider<UserProfileBloc>(
          create: (BuildContext context) => UserProfileBloc(),
          child: BlocBuilder<UserProfileBloc, UserProfileState>(
              builder: (BuildContext context, UserProfileState state) {
                _userProfileBloc = BlocProvider.of<UserProfileBloc>(context);
                Widget viewToReturn = Container();
                state.when(
                    initial: () {
                      log('initial profile');
                      _userProfileBloc.add(
                          UserProfileEvent.started(widget.user));
                      viewToReturn = const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    showProfile: (User user, List<Post> postsToShow,
                        String postsToShowString) {
                      isSignedIn = true;
                      viewToReturn = _showProfileBuilder(context, user, postsToShow);
                    },
                    unauthicated: () {
                      isSignedIn = false;
                      viewToReturn = _buildSignInPopUp();
                    },
                    errorLoading: () {
                      viewToReturn = Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                );
                return viewToReturn;
              }
          ),
        ),
        bottomNavigationBar: Footer(index: navigationIndex),
        endDrawer: _buildSideMenu()
      );
    }
    else {
      return Scaffold(
          appBar: isSignedIn ? AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 30,
            iconTheme: IconThemeData(
              color: Colors.black,

            ),
          ) : null,
        body: BlocProvider<UserProfileBloc>(
          create: (BuildContext context) => UserProfileBloc(),
          child: BlocBuilder<UserProfileBloc, UserProfileState>(
              builder: (BuildContext context, UserProfileState state) {
                _userProfileBloc = BlocProvider.of<UserProfileBloc>(context);
                Widget viewToReturn = Container();
                state.when(
                    initial: () {
                      _userProfileBloc.add(
                          UserProfileEvent.started(widget.user));
                      viewToReturn = const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    showProfile: (User user, List<Post> postsToShow,
                        String postsToShowString) {
                      isSignedIn = true;
                      viewToReturn = _showProfileBuilder(context, user, postsToShow);
                    },
                    unauthicated: () {
                      isSignedIn = false;
                      viewToReturn = _buildSignInPopUp();
                    },
                    errorLoading: () {
                      viewToReturn = Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                );
                return viewToReturn;
              }
          ),
        ),
        bottomNavigationBar: Footer(index: navigationIndex),
        endDrawer: _buildOptionsMenu(context)
      );
    }
  }


  Widget _showProfileBuilder(BuildContext buildContext, User user, List<Post> postsToShow) {
    return Column(
        children: [
          Expanded(
            child: LazyLoadScrollView(
                scrollOffset: (MediaQuery
                    .of(context)
                    .size
                    .height * 0.7).toInt(),
                child: RefreshIndicator(
                  onRefresh: _pullRefresh,
                  child:
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: postsToShow.length+1,
                    itemBuilder: (BuildContext buildContext, int index) {
                      if(index == 0){
                        return UserCard(
                          user: user,
                          postsCount: _userProfileBloc.postsCount,
                        );
                      }
//                      if (index != postsToShow.length) {
                        Post post = postsToShow[index-1];
                        return PostCard(
                          post: post,
                          index: index,
                          navigationIndex: navigationIndex,
                          onLikeTap: () {
                            BlocProvider.of<HomeScreenBloc>(context).add(HomeScreenEvent.refreshPost(post, SharedFunctions.convertLikeStatus(post.likeStatus!)));
                            _userProfileBloc.add(
                                UserProfileEvent.changeLikeStatus(
                                    post.likeStatus ?? LikeStatus.inactive,
                                    post.id));
                          },
                        );
                      }

//                      else
//                        return Center(
//                          child: CircularProgressIndicator(),
//                        );
//                    },
                  ),
                ),
              onEndOfPage: () {
                _userProfileBloc.add(UserProfileEvent.loadMore());
              },
            ),
          )
        ]
    );
  }

  Widget _buildSignInPopUp() {
    return AlertDialog(
      title: Text('Вы не вошли в систему'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => SignInScreen()
              ),
            );
          },
          child: Text('Войти'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => SignUpScreen()
              ),
            );
          },
          child: Text('Зарегистрироваться'),
        ),
      ],
    );
  }


  Widget _buildSideMenu() {
    if (widget.user == null) {
      return Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text(
                    'Настройки',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/background.jpg'))),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Редактировать профиль'),
                  onTap: _goToSettings,
                ),
                ListTile(
                  leading: Icon(Icons.door_back_door),
                  title: Text('Выйти из системы'),
                  onTap: _signOut,
                ),
              ]
          )
      );
    }
    else {
      return SizedBox.shrink();
    }
  }

  Widget _buildOptionsMenu(BuildContext context) {
      return Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text(
                    'Действия',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/background.jpg'))),
                ),
                ListTile(
                  leading: Icon(Icons.report),
                  title: Text('Пожаловаться на пользователя'),
                  onTap: () => _sendComplaintForUser(context),
                ),
              ]
          )
      );
  }

  void _sendComplaintForUser(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: const Text('Жалоба отправлена'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Понятно'),
            ),
          ],
        )
    );
  }

  void _goToSettings() {
    Navigator.push(
      context,
      PageRouteBuilder(
          opaque: true,
          pageBuilder: (_, __, ___) => UserSettingsScreen(user:_userProfileBloc.user)
      ),
    );
  }

  void _signOut() {
    Navigator.pop(context);
    _userProfileBloc.add(UserProfileEvent.signOut());
  }

  Future<void> _pullRefresh() async {
    return Future.delayed(
        Duration(seconds: 1),
            () {
//          _userProfileBloc.add(UserProfileEvent.refresh());
        }
    );
  }

}
