

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_twitter/models/user.dart';

class UserCard extends StatelessWidget{
  final User user;

  final VoidCallback? openSideMenu;

  const UserCard({
    Key? key,
    required this.user,
    required this.openSideMenu
  }) : super(key: key);

  EdgeInsets get _bottomMargin => EdgeInsets.only(
    bottom: 15,
  );

  Decoration get _boxDecoration => BoxDecoration(
    color: Colors.white70,
    border: Border(
      bottom: BorderSide(
        color: Colors.grey,
        width: 1,
        )

      )
  );

  Widget _buildUserData() => Container(
    color: Colors.white70,
    child:  Align(
        alignment: Alignment.topLeft,
          child: Row(
            children: [
              _buildUserAvatar(),
              _buildUserName()
            ],
          ),
        )

  );

  Widget _buildUserAvatar() => Container(
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        user.imageUrl,
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),

    ),
  );

  Widget _buildUserName()=> Container(
      child: Text(
        user.username,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35
        ),
      )
  );

//  Widget _buildSideMenuButton(){
//    return IconButton(
//        onPressed: openSideMenu,
//        icon: const Icon(Icons.more_vert)
//    );
//  }

  @override
  Widget build(BuildContext buildContext){
      return Container(
        margin: _bottomMargin,
        height: 80,
        decoration: _boxDecoration,
        child: Positioned.fill(
            child: Row(
              children: [
                _buildUserData(),
//                Align(
//                    alignment: Alignment.topRight,
//                    child: _buildSideMenuButton()
//                )

              ],

            ),
        )

      );
  }
}
