import 'package:my_twitter/models/post.dart';

class SharedFunctions{
  static String convertStatusToString(LikeStatus status){
    switch (status){
      case LikeStatus.active:
        return '1';
      case LikeStatus.inactive:
        return '0';
      default:
        return '-1';
    }
  }
}
