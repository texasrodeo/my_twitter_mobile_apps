import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/utils/constants.dart';
import 'dart:io';
import 'package:my_twitter/services/auth/auth_service.dart';


part 'addpost_screen_event.dart';
part 'addpost_screen_state.dart';
part 'addpost_screen_bloc.freezed.dart';

Dio dio = Dio();

class AddPostScreenBloc extends Bloc<AddPostScreenEvent, AddPostScreenState>{
  final AuthService _authService;


  AddPostScreenBloc(): _authService = AuthService(),super(_Initial());

  String requestUrl = '${Constants.apiBaseUrl}posts/add';

  late String authorId;

  late File imageFile;

  var parameters = Map<String, dynamic>();

  void buildParameters(String text, String imageUrl, String authorId){
    parameters['authorId'] = authorId;
    parameters['postText'] = text;
    parameters['imageUrl'] = imageUrl;
  }

  Future<AddPostScreenState> sendPostToServer(_Send event) async {
    String imageUrl = await uploadImageToFirestore(imageFile);
    try {
      buildParameters(event.text, imageUrl, _authService.getUserEmail()!);
      Response response = await dio.post(
        requestUrl,
        data: jsonEncode(parameters),
      );

      if(response.statusCode == 200){
        return _ShowSuccess();
      }
      else{
        return _ShowScreen();
      }
    } catch (e) {
      print(e);
      return _ErrorLoading();
    }
  }

  Future<String> uploadImageToFirestore(File _image) async {
    Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child('${Constants.postsImagesCollectionName}image'+ DateTime.now().toString());
    log(firebaseStorageRef.toString());
    UploadTask uploadTask = firebaseStorageRef.putFile(_image);
    final TaskSnapshot downloadUrl = (await uploadTask);
    final String resultUrl = await downloadUrl.ref.getDownloadURL();
    return resultUrl;
  }

  Future<AddPostScreenState> processLoadEvent() async{
    bool signedIn = await _authService.isSignedIn();

    if(signedIn){
      return _ShowScreen();
    }
    else{
      return _Unauthicated();
    }

  }


  AddPostScreenState showScreenWithImage(){
    return _ShowScreenWithImage();
  }

  @override
  Stream<AddPostScreenState> mapEventToState(
      AddPostScreenEvent event,
      ) async* {
    if (event is _Started) {
      yield await processLoadEvent();
    }
    if(event is _Send){

      yield await sendPostToServer(event);
    }
    if(event is _ImageChosen){
      yield showScreenWithImage();
    }
    if(event is _SetLoading){
      yield _UploadingPost();
    }
  }

  void setSelectImage(File picture) {
    imageFile = picture;
  }
}
