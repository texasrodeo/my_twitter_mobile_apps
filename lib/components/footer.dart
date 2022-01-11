import 'package:flutter/material.dart';
import 'package:my_twitter/screens/addpost_screen/addpost_screen.dart';
import 'package:my_twitter/screens/home_screen/home_screen.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';

class Footer extends StatefulWidget {

  @override
  _FooterState createState() => _FooterState();

}

class _FooterState extends State<Footer>{
  int _selectedIndex = 0;
//  final List<Widget> _options = [
//    HomeScreen(),
//    AddPostScreen(),
//    UserProfileScreen(user: null)
//  ];
  final List<String> _options = [
    '/Home',
    '/AddPost',
    '/Profile',
  ];


  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pushReplacementNamed(_options[_selectedIndex]);
//    Navigator.push(
//      context,
//      PageRouteBuilder(
//        opaque: true,
//        pageBuilder: (_, __, ___) => _options[_selectedIndex]
//      ),
//    );
  }

  @override
  Widget build(BuildContext buildContext){
      return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add post"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: "Profile",
            ),
          ],
//          currentIndex: _selectedIndex,

          iconSize: 25,
          onTap: _onItemTap,
          elevation: 5,
          selectedItemColor: Colors.black,
      );
  }

}

