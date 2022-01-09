import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:my_twitter/components/comment_card.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/components/post_card.dart';
import 'package:my_twitter/models/comment.dart';
import 'package:my_twitter/models/post.dart';
import 'package:my_twitter/screens/fullscreen_post/bloc/fullscreen_post_bloc.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';

class FullScreenPostScreen extends StatefulWidget {
  final Post post;

  const FullScreenPostScreen({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  _FullScreenPostScreenState createState() => _FullScreenPostScreenState();
}

class _FullScreenPostScreenState extends State<FullScreenPostScreen> {
  late FullscreenPostBloc _fullscreenPostBloc;

  final textController = TextEditingController();

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
              textController.text = "";
              _fullscreenPostBloc.add(FullscreenPostEvent.started(widget.post));
              viewToReturn = Center(
                child: CircularProgressIndicator(),
              );
            }, showPost: (Post post, String postString) {
              viewToReturn = _showPostBuilder(context, post);
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

  Widget _showPostBuilder(BuildContext buildContext, Post post) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PostCard(post: post, index: 1),
          Expanded(child: _buildComments(_fullscreenPostBloc.postComments)),
          Expanded(
            child: _buildAddCommentField(),
          )
        ],
      ),
    );
  }


  Widget _buildComments(List<Comment> postComments) => Container(
      child: LazyLoadScrollView(
        scrollOffset: (MediaQuery.of(context).size.height * 0.7).toInt(),
        child: RefreshIndicator(
          onRefresh: _pullRefresh,
          child: ListView.builder(
            padding: EdgeInsets.all(5),
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
              } else
                return Center(
                  child: CircularProgressIndicator(),
                );
            },
          ),
        ),
        onEndOfPage: () {
          _fullscreenPostBloc.add(FullscreenPostEvent.loadMoreComments());
        },
      ));

  Widget _buildAddCommentField() {
    return Container(
//      padding: EdgeInsets.only(bottom: 5),
//      width: 300,
//      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextField(

                controller: textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.black,
                  hintText: 'Добавьте свой комментарий',
                ),
              ),
          ),

          IconButton(
            onPressed: () {
              _fullscreenPostBloc
                  .add(FullscreenPostEvent.addComment(textController.text));
            },
            icon: const Icon(
              Icons.send,
//              size: 30,
            ),
          )
        ],
      ),
    );
  }

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
          user: widget.post.author,
        ),
      ),
    );
  }

  Future<void> _pullRefresh() async {
    return Future.delayed(Duration(seconds: 1), () {
//          _homeScreenBloc.add(HomeScreenEvent.refresh());
    });
  }
}
