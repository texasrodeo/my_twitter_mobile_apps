
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/screens/fullscreen_post/fullscreen_post_screen.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';



class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback? onLikeTap;
  final int index;

  const PostCard({
    Key? key,
    required this.post,
    required this.index,
    this.onLikeTap,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: _bottomMargin,
        height: 625,
        decoration: _boxDecoration,
        child: Column(
              children: [
                  _buildUserData(context),
                  Container(
//                    color: Colors.green,
                    child: GestureDetector(
                      child: _buildPost(),

                      onTap: (){
                        _openFullScreen(context);
                      },
                    ),
                  ),


                  GestureDetector(
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.02)),
                    ),
                      onTap: (){
                        log("opening profile");
                        _openFullScreen(context);
                        },
                  ),



              ]
        ),
      );
  }

  EdgeInsets get _bottomMargin => EdgeInsets.only(
    bottom: 30,
  );

  Decoration get _boxDecoration => BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(10),
      topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
//    color: Colors.grey,
    border: Border.all(
      color: Colors.grey,
      width: 1,
    ),
  );

  Widget _buildUserData(BuildContext context) => Container(
    child:  Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            _openUserProfile(context);
          },
          child: Row(
            children: [
              _buildUserAvatar(),
              _buildUserName()
            ],
          ),
        )

    ),
  );

  Widget _buildPost() => Hero(
    tag: post.id,
    child: Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                post.imageUrl,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),

            ),
          ),

          Align(
             child: Text(
                post.text,
                textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
              )
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child:Row(
              children: [
                _buildLikeIcon(),
                _buildCommentIcon(),
                _buildShareIcon()
              ],
            ),
          )
        ],
      ),
    )
  );

  Widget _buildLikeIcon() => Container(
    padding: EdgeInsets.symmetric(
      vertical: 1,
    ),
    margin: EdgeInsets.all(5),
    child: GestureDetector(
      onTap: onLikeTap,
      child: Icon(
        post.likeStatus == LikeStatus.inactive ? Icons.favorite_border_sharp : Icons.favorite,
        color: post.likeStatus == LikeStatus.inactive ? Colors.white : Colors.redAccent,
        size: 40,
      ),
    ),
  );

  Widget _buildCommentIcon() => Container(
    padding: EdgeInsets.symmetric(
      vertical: 1,
    ),
    margin: EdgeInsets.all(5),
    child: GestureDetector(
      child: Icon(
        Icons.comment,
        size: 40
      ),
    ),
  );


  Widget _buildShareIcon() => Container(
    padding: EdgeInsets.symmetric(
      vertical: 1,
    ),
    margin: EdgeInsets.all(5),
    child: GestureDetector(
      child: Icon(
          Icons.share,
        size: 40,
      ),
    ),
  );

  Widget _buildUserAvatar() => Container(
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        post.author.imageUrl,
        fit: BoxFit.fill,
        width: 40,
        height: 40,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),

    ),
  );

  Widget _buildUserName()=> Container(
      child: Text(
        post.author.username,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
      )
  );


  void _openFullScreen(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
         pageBuilder: (_, __, ___) => FullScreenPostScreen(
           post: post,
         ),
      ),
    );
  }

  void _openUserProfile(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (_, __, ___) => UserProfileScreen(
        ),
      ),
    );
  }
}
