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

  static LikeStatus convertLikeStatus(LikeStatus status){
    LikeStatus l;
    if(status == LikeStatus.active){
      l = LikeStatus.inactive;
    }
    else{
      l = LikeStatus.active;
    }
    return l;
  }
}
