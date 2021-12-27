


import 'package:my_twitter/components/comment_card.dart';
import 'package:my_twitter/models/comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/screens/fullscreen_post/bloc/fullscreen_post_bloc.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';

class FullScreenPostScreen extends StatefulWidget{

  final Post post;

  const FullScreenPostScreen({
    Key? key,
    required this.post,
  }) : super(key: key);
  @override
  _FullScreenPostScreenState createState() => _FullScreenPostScreenState();
}

class _FullScreenPostScreenState extends State<FullScreenPostScreen>{
  late FullscreenPostBloc _fullscreenPostBloc;

  @override
  void dispose() {
    _fullscreenPostBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: BlocProvider<FullscreenPostBloc>(
          create: (BuildContext context) => FullscreenPostBloc(),
          child: BlocBuilder<FullscreenPostBloc, FullscreenPostState>(
            builder: (BuildContext context, FullscreenPostState state) {
              _fullscreenPostBloc = BlocProvider.of<FullscreenPostBloc>(context);
              Widget viewToReturn = Container();
              state.when(initial: () {
                _fullscreenPostBloc.add(FullscreenPostEvent.started(widget.post));
                viewToReturn = Center(
                  child: CircularProgressIndicator(),
                );
              }, showPost: (Post post, String postString) {
                viewToReturn = _showPostBuilder(context,post);
              }, errorLoading: () {
                viewToReturn = Center(
                  child: CircularProgressIndicator(),
                );
              });
              return viewToReturn;
            },
          ),
        ),
        bottomNavigationBar: Footer(),
    );
  }

  Widget _showPostBuilder(BuildContext buildContext,Post post) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: _buildUserData(buildContext, post)
          ),
          buildImage(post),

          Align(
              alignment: Alignment.bottomLeft,
              child: _buildPostText(post)
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                _buildLikeButton(post),
                _buildCommentIcon(),
                _buildShareIcon()
              ],
            )


          )

        ],
      ),
    );
  }

  Widget _buildPostText(Post post){
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        post.text,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
//                    fontWeight: FontWeight.bold,
            fontSize: 24
        ),
      )
      
    );
  }

  Widget buildImage(Post post) => Container(
    width: 200,
    height: 350,
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        post.imageUrl,
        fit: BoxFit.fill,
//        width: 100,
//        height: 100,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),

    ),
  );

  Widget _buildLikeButton(Post post) => Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(
      vertical: 8,
    ),
    margin: EdgeInsets.all(10),
    child: GestureDetector(
      onTap: changeLikeStatus,
      child: Icon(
        post.likeStatus == LikeStatus.inactive ? Icons.favorite_outline : Icons.favorite,
        color: post.likeStatus == LikeStatus.inactive ? Colors.black : Colors.redAccent,
        size: 40
      ),
    ),
  );

  Widget _buildCommentIcon() => Container(
    padding: EdgeInsets.symmetric(
      vertical: 1,
    ),
    margin: EdgeInsets.all(10),
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
    margin: EdgeInsets.all(10),
    child: GestureDetector(
      child: Icon(
        Icons.share,
        size: 40,
      ),
    ),
  );

  Widget _buildUserData(BuildContext buildContext,Post post) => GestureDetector(
    onTap: (){
      _openUserProfile(context,post);
    },
    child:  Row(
      children: [
        _buildUserAvatar(post),
        _buildUserName(post)
      ],
    ),
  );

  Widget _buildUserAvatar(Post post) => Container(
    width: 100,
    height: 100,
    child: Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        post.author.imageUrl,
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),

    ),
  );

  Widget _buildUserName(Post post)=> Container(
      child: Text(
        post.author.username,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),
      )
  );

  Widget _buildComments(List<Comment> postComments)=>Container(
      child: LazyLoadScrollView(
        scrollOffset: (MediaQuery.of(context).size.height * 0.7).toInt(),
        child: RefreshIndicator(
          onRefresh: _pullRefresh,
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: postComments.length,
            itemBuilder: (BuildContext context, int index) {
              if (index != postComments.length) {
                Comment comment = postComments[index];
                return CommentCard(
                  comment: comment,
                  index: index,
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
          _fullscreenPostBloc.add(FullscreenPostEvent.loadMoreComments());
        },
      )
  );

  void changeLikeStatus() {
    _fullscreenPostBloc.add(
      FullscreenPostEvent.changeLikeStatus(),
    );
  }

  void _openUserProfile(BuildContext context, Post post) {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (_, __, ___) => UserProfileScreen(
        ),
      ),
    );
  }

  Future<void> _pullRefresh() async {
    return Future.delayed(
        Duration(seconds: 1),
            (){
//          _homeScreenBloc.add(HomeScreenEvent.refresh());
        }
    );
  }

}
