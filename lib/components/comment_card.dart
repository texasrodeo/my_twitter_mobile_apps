import 'package:flutter/material.dart';
import 'package:my_twitter/models/comment.dart';

class CommentCard extends StatelessWidget {
  final Comment comment;
  final int index;

  const CommentCard({
    Key? key,
    required this.comment,
    required this.index,
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(5),
      decoration: _boxDecoration,
      child: Row(
        children: [
          _buildUserAvatar(),
          Column(
            children: [
              _buildUserName(),
              _buildCommentText()
            ],
          )
        ],
      )
    );
  }

  Widget _buildUserAvatar() => Container(
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        comment.author.imageUrl,
        fit: BoxFit.fill,
        width: 20,
        height: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(5),

    ),
  );

  Widget _buildUserName()=> Container(
      child: Text(
        comment.author.username,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
      )
  );

  Widget _buildCommentText() => Container(
    child: Text(
      comment.text,
      textAlign: TextAlign.end,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
      ),
    )
  );

  Decoration get _boxDecoration => BoxDecoration(
    color: Colors.grey,
    border: Border.symmetric(
      vertical: BorderSide (
          width: 1,
          color: Colors.grey,
      ),
    ),
  );

}
