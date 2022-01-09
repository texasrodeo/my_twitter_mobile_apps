import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_twitter/screens/user_profile/user_profile_screen.dart';
import 'package:my_twitter/screens/user_settings_screen/bloc/user_settings_bloc.dart';
import 'dart:io';

class UserSettingsScreen extends StatefulWidget {

  const UserSettingsScreen({
    Key? key
  }) : super(key: key);

  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}


class _UserSettingsScreenState extends State<UserSettingsScreen>{
  late UserSettingsScreenBloc _userSettingsScreenBloc;
  int? id;

  Widget viewToReturn = Container();

  final textController = TextEditingController();

  @override
  void dispose() {
    _userSettingsScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build (BuildContext buildContext){
    return Scaffold(
      body: BlocProvider<UserSettingsScreenBloc>(
        create: (BuildContext context) => UserSettingsScreenBloc(),
        child: BlocBuilder<UserSettingsScreenBloc,UserSettingsScreenState> (
            builder: (BuildContext context, UserSettingsScreenState state){
              _userSettingsScreenBloc = BlocProvider.of<UserSettingsScreenBloc>(context);
              Widget viewToReturn = Container();

              state.when(
                  initial: (){
                    _userSettingsScreenBloc.add(UserSettingsScreenEvent.started());
                    viewToReturn = const Center(
                      child: CircularProgressIndicator(),
                    );
                    },
                 showScreen: (){
                   textController.text =  _userSettingsScreenBloc.user.username;
                    viewToReturn = _buildSettingScreen();
                  },
                  showScreenWithImage: (){
                    textController.text =  _userSettingsScreenBloc.user.username;
                   viewToReturn = _buildSettingScreenWithNewImage();
                  },
                  showSuccess: (){
                    viewToReturn = _buildSuccessScreen();
                  },
                  showImagePicker: (){
                    viewToReturn = _showChoosePictureDialog();
                  },
                  errorLoading: () {
                    viewToReturn = _errorLoadingBuilder();
                  },
              );
              return viewToReturn;
            }
        ),
      ),
    );
  }

  Widget _buildTopToolbar(){
    return Container(
      margin: EdgeInsets.only(
        top: 20
      ),
      child: Text(
        'Редактирование профиля',
          style: const TextStyle(
              fontSize: 30
          ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildImageSpaceInitial(){
    return Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Image.network(
              _userSettingsScreenBloc.user.imageUrl,
              width: 300 ,
              height: 300),
        )

    );
  }

  Widget _buildImageSpace(){
    return Center(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Image.file(_userSettingsScreenBloc.imageFile!, width: 300, height: 300),
        )

    );
  }


  Widget _buildAddPhotoButton(){
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(5),
              primary: Colors.blue,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              _userSettingsScreenBloc.add(UserSettingsScreenEvent.chooseImage());
            },
            child: const Text('Выбрать фото'),
          ),
        ],
      ),
    );
  }


  Widget _buildSaveButton(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: const EdgeInsets.all(16.0),
                primary: Colors.white,
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 30),
              ),
              onPressed: () {
                _userSettingsScreenBloc.add(UserSettingsScreenEvent.send(textController.text));
              },
              child: const Text('Сохранить '),
            ),
          ],
        ),
      )
    );
  }

  Widget _buildTextField(){
    return Padding(
       padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
       child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Имя пользователя',
              labelStyle: TextStyle(
                fontSize: 30
              )
            ),
            controller: textController,
            validator: (text) {
              if (text!.isEmpty) {
                return "Заполните обязательное поле!";
              }
              return null;
            }
        )
    );
  }

  Widget _buildSettingScreenWithNewImage(){
    return Center(
      child:  Column(
        children: [
          _buildTopToolbar(),
          _buildTextField(),
          _buildImageSpace(),
          _buildAddPhotoButton(),

          _buildSaveButton()
        ],
      ),
    );
  }


  Widget _buildSettingScreen(){
    return Center(
      child:  Column(
        children: [
          _buildTopToolbar(),
          _buildTextField(),
          _buildImageSpaceInitial(),
          _buildAddPhotoButton(),

          _buildSaveButton()
        ],
      ),
    );
  }

  Widget _buildSuccessScreen(){
    return AlertDialog(
      title: Text('Данные успешно обновлены'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => UserProfileScreen(user: null)
              ),
            );
          },
          child: Text('На главную'),
        ),
      ],
    );
  }

  Widget _showChoosePictureDialog(){
    return AlertDialog(
      title: Text('Добавить фото'),
      actions: [
        TextButton(
          onPressed: () {
            _openGallery();
          },
          child: Text('Галерея'),
        ),
        TextButton(
          onPressed: () {
            _openCamera();
          },
          child: Text('Камера'),
        ),
        TextButton(
            onPressed: (){
              _userSettingsScreenBloc.add(UserSettingsScreenEvent.started());
            },
            child: Text('Назад')
        )
      ],
    );
  }

  Widget _errorLoadingBuilder() {
    return Center(
      child: GestureDetector(
        onTap: () {
          _userSettingsScreenBloc.add(UserSettingsScreenEvent.started());
        },
        child: Icon(
          Icons.replay_outlined,
        ),
      ),
    );
  }

  _openGallery() async{
    var picture = await ImagePicker().pickImage(source: ImageSource.gallery);
    File file = File(picture!.path);
    _userSettingsScreenBloc.setSelectImage(file);
    _userSettingsScreenBloc.add(UserSettingsScreenEvent.imageChosen());
  }

  _openCamera() async{
    var picture = await ImagePicker().pickImage(source: ImageSource.camera);
    File file = File(picture!.path);
    _userSettingsScreenBloc.setSelectImage(file);
    _userSettingsScreenBloc.add(UserSettingsScreenEvent.imageChosen());
  }



}
