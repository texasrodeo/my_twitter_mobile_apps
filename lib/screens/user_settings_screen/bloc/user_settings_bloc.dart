
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/models/main_user_details.dart';
import 'package:my_twitter/utils/constants.dart';
import 'package:my_twitter/services/auth/auth_service.dart';
import 'dart:io';
import 'package:my_twitter/models/user.dart';

part 'user_settings_bloc.freezed.dart';
part 'user_settings_event.dart';
part 'user_settings_state.dart';

Dio dio = Dio();

class UserSettingsScreenBloc extends Bloc<UserSettingsScreenEvent, UserSettingsScreenState> {
  final AuthService _authService;


  UserSettingsScreenBloc(): _authService = AuthService(),super(_Initial());

  String requestUrl = '${Constants.apiBaseUrl}users/user/update';
  String getUserUrl = '${Constants.apiBaseUrl}users/user';
  Map<String, dynamic> get userParameters => {
    'username': userDetails.email,
  };


  var parameters = Map<String, dynamic>();
  void buildParameters(String email, String imageUrl, String username){
    parameters['email'] = email;
    parameters['imageUrl'] = imageUrl;
    parameters['username'] = username;
  }

  late MainUserDetails userDetails;

  late String authorId;

  late User user;

  File? imageFile;

  late File oldImage;



  Future<UserSettingsScreenState> processLoadSignal() async {
    userDetails= MainUserDetails(
        email: _authService.getUserEmail()!
    );
    try{
      final userResult = await dio.get(
        getUserUrl,
        queryParameters: userParameters,
      );

      user = User(
          id: userResult.data['id'],
          username: userResult.data['username'],
          imageUrl: userResult.data['avatarUrl']
      );
//      oldImage = await ImageDownloader.downloadImage(user.imageUrl);
      return _ShowScreen();
    }
    catch (e) {
      print(e);
      return _ErrorLoading();
    }
  }


  Future<String> uploadImageToFirestore(File _image) async {
    Reference firebaseStorageRef =
    FirebaseStorage.instance.ref().child('${Constants.postsImagesCollectionName}image'+ DateTime.now().toString());
    UploadTask uploadTask = firebaseStorageRef.putFile(_image);
    final TaskSnapshot downloadUrl = (await uploadTask);
    final String resultUrl = await downloadUrl.ref.getDownloadURL();
    return resultUrl;
  }

  UserSettingsScreenState processChoosingImage(){
    return _ShowImagePicker();
  }

  Future<UserSettingsScreenState> sendProfileToServer(_Send event) async {
    String imageUrl;
    if(imageFile!=null){
      imageUrl = await uploadImageToFirestore(imageFile!);
    }
    else{
      imageUrl = user.imageUrl;
    }
    try {


      buildParameters(user.id, imageUrl, event.username);
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

  UserSettingsScreenState showScreenWithImage(){
    return _ShowScreenWithImage();
  }

  @override
  Stream<UserSettingsScreenState> mapEventToState(
      UserSettingsScreenEvent event,
      ) async* {
    if (event is _Started) {
      yield await processLoadSignal();
    }
    if(event is _Send){
      yield await sendProfileToServer(event);
    }
    if(event is _ChooseImage){
      yield processChoosingImage();
    }
    if(event is _ImageChosen){
      yield showScreenWithImage();
    }
  }

  void setSelectImage(File picture) {
    imageFile = picture;

  }


}
