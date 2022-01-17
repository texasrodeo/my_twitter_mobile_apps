
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/screens/fullscreen_post/fullscreen_post_screen.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';


class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback? onLikeTap;
  final int index;
  final int navigationIndex;

  final double? _profilePictureSize = 50;

  const PostCard({
    Key? key,
    required this.post,
    required this.index,
    required this.navigationIndex,
    this.onLikeTap,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: _Margin,
        padding: _Padding,
        decoration: _boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildUserData(context),
            Padding(
              child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 5.0),
                    _buildText(context),
                    SizedBox(height: 5.0,),
                  ]
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
             _buildImage(context),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _buildPostStats(context),
            ),
          ],
        )

      );
  }

  EdgeInsets get _Margin => EdgeInsets.only(
    bottom: 10.0,
  );

  EdgeInsets get _Padding => EdgeInsets.symmetric(
//    vertical: 8.0,
  );

  Decoration get _boxDecoration => BoxDecoration(
    border: Border(
//      bottom: BorderSide(color: Colors.grey)
    ),
//    color: Colors.red
  );

  Widget _buildUserData(BuildContext context) => Row(
      children: [
        _buildUserAvatar(context),
        SizedBox(width: 4.0),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserName(context),
              ],
            )
        ),
        PopupMenuButton(
            onSelected: (result) {
              if (result == 1) {
                  _sendComplaintForPost(context);
              }
              else if (result == 2){
                  _sendComplaintForUser(context);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Пожаловаться на пост"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Заблокировать автора"),
                value: 2,
              ),
            ]
        )
//        IconButton(
//            icon: const Icon(Icons.more_horiz),
//            onPressed: () => print('More'),
//        ),
      ]
  );


  Widget _buildText(BuildContext context) => GestureDetector(
      onTap: (){
        _openFullScreen(context);
      },
      child: Text(
        post.text,
        style: TextStyle(
            fontSize: 18
        ),
      )
  );


  Widget _buildImage(BuildContext context) => GestureDetector(
      onTap: (){
        _openFullScreen(context);
      },
      child: Container(
        height: 350,
        margin: EdgeInsets.only(
            bottom: 8.0
        ),
//        child: Image.network(
//          post.imageUrl,
//          fit: BoxFit.fill,
//        ),
//        child: Card(
          child: CachedNetworkImage(
            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            ),
            imageUrl: post.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
//      )
  );



  Widget _buildPostStats(BuildContext context) =>  Container(
    margin: EdgeInsets.only(
      bottom: 6.0
    ),
    child: Row(
      children: [
        _PostButton(
          icon: Icon(
            post.likeStatus == LikeStatus.inactive ? Icons.favorite_outline : Icons.favorite,
            color: post.likeStatus == LikeStatus.inactive ? Colors.black : Colors.redAccent,
            size: 30,
          ),
          label: post.likes.length.toString(),
          onTap: () => {
            onLikeTap!()
          },
        ),
        _PostButton(
          icon: Icon(
              Icons.comment,
              size: 30
          ),
          label: '',
          onTap: () => _openFullScreen(context),
        ),
        _PostButton(
          icon: Icon(
            Icons.share,
            size: 30,
          ),
          label: '',
          onTap: () => print('Share'),
        )
      ],
    ),
  );



  Widget _buildUserAvatar(BuildContext context) =>  GestureDetector(
    onTap: (){
      _openUserProfile(context);
    },
    child: Card(
      semanticContainer: false,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: CachedNetworkImage(
        imageUrl: post.author.imageUrl,
        width: _profilePictureSize,
        height: _profilePictureSize,
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_profilePictureSize!/2),
      ),
    ),
  );

  Widget _buildUserName(BuildContext context)=> GestureDetector(
      onTap: (){
        _openUserProfile(context);
      },
      child: Text(
        post.author.username,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
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
           navigationIndex: navigationIndex,
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
          user: post.author,
        ),
      ),
    );
  }

  void _sendComplaintForPost(BuildContext context){
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

  void _sendComplaintForUser(BuildContext context){
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: const Text('Мы рассмотрим Ваш запрос'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Понятно'),
            ),
          ],
        )
      );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final VoidCallback? onTap;

  const _PostButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                Container(
                  margin: EdgeInsets.only(
                    top: 3
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
