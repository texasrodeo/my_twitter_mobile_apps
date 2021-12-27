import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_twitter/components/cancel_cross.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/screens/addpost_screen/bloc/addpost_screen_bloc.dart';
import 'package:my_twitter/screens/home_screen/home_screen.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';


class AddPostScreen extends StatefulWidget{
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen>{
  late AddPostScreenBloc _addPostScreenBloc;
  Widget viewToReturn = Container();

  final textController = TextEditingController();

  @override
  void dispose() {
    _addPostScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext){
    return Scaffold(
      body: BlocProvider<AddPostScreenBloc>(
          create: (BuildContext context) => AddPostScreenBloc(),
          child: BlocBuilder<AddPostScreenBloc, AddPostScreenState>(
              builder: (BuildContext context, AddPostScreenState state) {
                _addPostScreenBloc = BlocProvider.of<AddPostScreenBloc>(context);
                Widget viewToReturn = Container();
                state.when(
                  initial: () {
                    _addPostScreenBloc.add(AddPostScreenEvent.started());
                    viewToReturn = const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  showScreen: (){
                    viewToReturn = _buildAddPostScreen();
                  },
                  showScreenWithImage: (){
                    viewToReturn = _buildAddPostScreenWithImage();
                  },
                  showSuccess: (){
                    viewToReturn = _buildSuccessScreen();
                  },
                  showImagePicker: (){
                    viewToReturn = _showChoosePictureDialog();
                  },
                  unauthicated: (){
                    viewToReturn = _buildSignInPopUp();
                  },
                  errorLoading: () {
                    viewToReturn = _errorLoadingBuilder();
                  },
                );
                return viewToReturn;
              }

          )
        ),
      bottomNavigationBar: Footer(),
      );
  }

  Widget _buildSuccessScreen(){
    return AlertDialog(
      title: Text('Пост успешно опубликован'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => HomeScreen()
              ),
            );
          },
          child: Text('На главную'),
        ),
      ],
    );
  }

  Widget _buildSignInPopUp(){
    return AlertDialog(
      title: Text('Вы не вошли в систему'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => SignInScreen()
              ),
            );
          },
          child: Text('Войти'),
        ),
      ],
    );
  }

  Widget _buildAddPostScreenWithImage(){
    return Center(
      child:  Column(
        children: [
          _buildTopToolbar(),
          _buildTextField(),
          _buildImageSpace(),
          _buildAddPhotoButton()

        ],
      ),
    );
  }

  Widget _buildAddPostScreen(){
    return Center(
      child:  Column(
        children: [
          _buildTopToolbar(),
          _buildTextField(),
          _buildAddPhotoButton()

        ],
      ),
    );
  }

  Widget _buildImageSpace(){
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Image.file(_addPostScreenBloc.imageFile, width: 400, height: 400),
      )

    );
  }

  Widget _buildTopToolbar(){
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          CancelCross(),
          Align(
            child: _buildPublishButton(),
            alignment: Alignment.topRight,
          )
        ],
      ),
    );
  }

  Widget _buildPublishButton(){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 30),
        maximumSize: const Size(200, 30),
      ),
      onPressed: () {
        if(textController.text.isNotEmpty){
          _addPostScreenBloc.add(AddPostScreenEvent.send(textController.text));
          }
        },
      child: Text(
        'Опубликовать'
      ),
    );
  }

  Widget _buildTextField(){
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Введите свои мысли сюда...',
      ),
      controller: textController,
      validator: (text) {
      if (text!.isEmpty) {
        return "Заполните обязательное поле!";
      }
      return null;
    },
    );
  }

  Widget _buildAddPhotoButton(){
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 60),
            maximumSize: const Size(300, 60),
            ),
            onPressed: () {
              _addPostScreenBloc.add(AddPostScreenEvent.chooseImage());
            },
            child: Text(
              'Добавить фото'
            ),
          )
        ],
      ),
    );
  }

  Widget _errorLoadingBuilder() {
    return Center(
      child: GestureDetector(
        onTap: () {
          _addPostScreenBloc.add(AddPostScreenEvent.started());
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
    _addPostScreenBloc.setSelectImage(file);
    _addPostScreenBloc.add(AddPostScreenEvent.imageChosen());
  }

  _openCamera() async{
    var picture = await ImagePicker().pickImage(source: ImageSource.camera);
    File file = File(picture!.path);
    _addPostScreenBloc.setSelectImage(file);
    _addPostScreenBloc.add(AddPostScreenEvent.imageChosen());
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
              _addPostScreenBloc.add(AddPostScreenEvent.started());
            },
            child: Text('Назад')
        )
      ],
    );
  }

}
