import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_twitter/models/user.dart';

class UserCard extends StatelessWidget{
  final User user;
  final double avatarSize = 60;

  final int postsCount;

  const UserCard({
    Key? key,
    required this.user,
    required this.postsCount,
  }) : super(key: key);

  EdgeInsets get _bottomMargin => EdgeInsets.only(
//    bottom: 15,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildUserAvatar(),
                  _buildUserName(),
                ],
              ),
              _buildPostsCount()
            ],
          )
        )
  );

  Widget _buildUserAvatar() => Container(
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        user.imageUrl,
        fit: BoxFit.fill,
        width: avatarSize,
        height: avatarSize,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(avatarSize/2),
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
            fontSize: 35
        ),
      )
  );


  @override
  Widget build(BuildContext buildContext){
      return Container(
        margin: _bottomMargin,
        height: 100,
        decoration: _boxDecoration,
        child: _buildUserData(),
      );
  }

  Widget _buildPostsCount()=>Container(
    margin: EdgeInsets.only(
      left: 10
    ),
    child: Text(
      "Посты: " + postsCount.toString(),
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 15),
    ),
  );
}
