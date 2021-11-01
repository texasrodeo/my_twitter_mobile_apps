
import 'package:flutter/material.dart';
import 'package:my_twitter/models/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel post;
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

    return GestureDetector(
//      onTap: () {
//        _openFullScreen(context);
//      },
      child: Container(
        margin: _bottomMargin,
        height: 200,
        decoration: _boxDecoration,
        child: Stack(
          children: [
            Positioned.fill(
              child: _buildPost(),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
              ),
            ),
            Positioned(right: 16, top: 16, child: _buildLikeIcon()),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _bottomMargin => EdgeInsets.only(
    bottom: 30,
  );

  Decoration get _boxDecoration => BoxDecoration(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    border: Border.all(
      color: Colors.grey,
      width: 1,
    ),
  );

//  Widget _buildImage() => Hero(
//    tag: post.id,
//    child: Image.network(
////      image.imageUrl,
//      fit: BoxFit.cover,
//    ),
//  );

  Widget _buildPost() => Container(

  );

  Widget _buildLikeIcon() => Container(
    padding: EdgeInsets.symmetric(
      vertical: 8,
    ),
    child: GestureDetector(
      onTap: onLikeTap,
      child: Icon(
        post.likeStatus == LikeStatus.notLiked ? Icons.favorite_outline : Icons.favorite,
        color: post.likeStatus == LikeStatus.notLiked ? Colors.white : Colors.redAccent,
      ),
    ),
  );

//  void _openFullScreen(BuildContext context) {
//    Navigator.push(
//      context,
//      PageRouteBuilder(
//        opaque: false,
//        // pageBuilder: (_, __, ___) => FullScreenImageScreen(
//        //   image: image,
//        // ),
//        pageBuilder: (_, __, ___) => FullScreenImageScreenRedux(
//          selectedIndex: index,
//        ),
//      ),
//    );
//  }
}
