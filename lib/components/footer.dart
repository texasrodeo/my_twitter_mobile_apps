
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final int index;

  const Footer({
    Key? key,
    required this.index
  }) : super(key: key);


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
      _selectedIndex = widget.index;
      return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Домой"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Добавить пост"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: "Профиль",
            ),
          ],


          iconSize: 25,
          onTap: _onItemTap,
          currentIndex: _selectedIndex,
          elevation: 5,
          selectedItemColor: Colors.black,
      );
  }

}

