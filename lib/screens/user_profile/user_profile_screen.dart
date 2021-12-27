import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/components/post_card.dart';
import 'package:my_twitter/components/user_card.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/models/user.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';
import 'package:my_twitter/screens/user_profile/bloc/user_profile_bloc.dart';

class UserProfileScreen extends StatefulWidget {

  const UserProfileScreen({
    Key? key
  }) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}


class _UserProfileState extends State<UserProfileScreen>{
  late UserProfileBloc _userProfileBloc;
  int? id;

  Widget viewToReturn = Container();


  @override
  void dispose() {
    _userProfileBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white70,
        toolbarHeight: 35,
          iconTheme: IconThemeData(color: Colors.black),

      ),
      body: BlocProvider<UserProfileBloc>(
        create: (BuildContext context) => UserProfileBloc(),
        child: BlocBuilder<UserProfileBloc,UserProfileState> (
            builder: (BuildContext context, UserProfileState state){
              _userProfileBloc = BlocProvider.of<UserProfileBloc>(context);
              Widget viewToReturn = Container();
              state.when(
                  initial: (){
                    _userProfileBloc.add(UserProfileEvent.started());
                    viewToReturn = const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  showProfile: (User user, List<Post> postsToShow, String postsToShowString){
                    viewToReturn = _showProfileBuilder(user, postsToShow);
                  },
                  unauthicated: (){
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
      bottomNavigationBar: Footer(),
      endDrawer: _buildSideMenu(),
    );
  }


  Widget _showProfileBuilder(User user, List<Post> postsToShow){
    return LazyLoadScrollView(
      scrollOffset: (MediaQuery.of(context).size.height * 0.7).toInt(),
      onEndOfPage: () {
        _userProfileBloc.add(UserProfileEvent.loadMore());
      },
      child: Column(
        children: [
          UserCard(
              user: user,
              openSideMenu: _buildSideMenu
          ),
          LazyLoadScrollView(
              scrollOffset: (MediaQuery.of(context).size.height * 0.7).toInt(),
                child: RefreshIndicator(
                  onRefresh: _pullRefresh,
                  child:
                  ListView.builder(
                    padding: EdgeInsets.all(16),
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: postsToShow.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index != postsToShow.length) {
                        Post post = postsToShow[index];
                        return PostCard(
                          post: post,
                          index: index,
                          onLikeTap: () {
                            _userProfileBloc.add(UserProfileEvent.changeLikeStatus(post.likeStatus ?? LikeStatus.inactive, post.id));
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
              _userProfileBloc.add(UserProfileEvent.loadMore());
            },

          ),

        ],
      )
    );
  }

//  Widget _buildUserData() => Container(
//      child:  Align(
//        alignment: Alignment.topLeft,
//        child: Row(
//          children: [
//            _buildUserAvatar(),
//            _buildUserName(),
//            _buildSideMenuButton()
//          ],
//        ),
//      )
//
//  );
//
//  Widget _buildUserAvatar() => Container(
//    child: Card(
//      semanticContainer: true,
//      clipBehavior: Clip.antiAliasWithSaveLayer,
//      child: Image.network(
//        _userProfileBloc.user.imageUrl,
//        fit: BoxFit.fill,
//      ),
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(10.0),
//      ),
//      elevation: 5,
//      margin: EdgeInsets.all(10),
//
//    ),
//  );
//
//  Widget _buildUserName()=> Container(
//      child: Text(
//        _userProfileBloc.user.username,
//        textAlign: TextAlign.end,
//        overflow: TextOverflow.ellipsis,
//        style: const TextStyle(
//            fontWeight: FontWeight.bold,
//            fontSize: 35
//        ),
//      )
//  );


  Widget _buildPostsCount()=>Container(
    child: Text(
      "Посты: " + _userProfileBloc.postsCount.toString(),
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );

  Widget _buildSignInPopUp(){
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
      ],
    );
  }

//  Widget _buildSideMenuButton(){
//    return IconButton(
//        onPressed: _buildSideMenu,
//        icon: const Icon(Icons.more_vert)
//    );
//  }

  Widget _buildSideMenu(){
    log("opening side menu");
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

  void _goToSettings(){
    Navigator.of(context).pushReplacementNamed(_userProfileBloc.userSettingsRoute);
  }

  void _signOut(){
    _userProfileBloc.add(UserProfileEvent.signOut());
    Timer(
        Duration(seconds: 2),
        () {
          Navigator.of(context).pushReplacementNamed(_userProfileBloc.homeScreenRoute);
        }
    );
  }

  Future<void> _pullRefresh() async {
    return Future.delayed(
        Duration(seconds: 1),
            (){
//          _userProfileBloc.add(UserProfileEvent.refresh());
        }
    );
  }

}
