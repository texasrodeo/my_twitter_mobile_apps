import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_twitter/components/footer.dart';
import 'package:my_twitter/components/loadingBar.dart';
import 'package:my_twitter/screens/addpost_screen/bloc/addpost_screen_bloc.dart';
import 'package:my_twitter/screens/home_screen/home_screen.dart';
import 'package:my_twitter/screens/sign_in_screen/sign_in_screen.dart';
import 'package:my_twitter/screens/sign_up_screen/sign_up_screen.dart';

class AddPostScreen extends StatefulWidget {
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  late AddPostScreenBloc _addPostScreenBloc;
  Widget viewToReturn = Container();

  final textController = TextEditingController();

  bool _buttonsEnabled = true;
  final int _maxLines = 3;

  String loadingText = 'Подождите, пост публикуется';

  @override
  void dispose() {
    _addPostScreenBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: BlocProvider<AddPostScreenBloc>(
          create: (BuildContext context) => AddPostScreenBloc(),
          child: BlocBuilder<AddPostScreenBloc, AddPostScreenState>(
              builder: (BuildContext context, AddPostScreenState state) {
            _addPostScreenBloc = BlocProvider.of<AddPostScreenBloc>(context);
            Widget viewToReturn = Container();
            state.when(initial: () {
              _addPostScreenBloc.add(AddPostScreenEvent.started());
              viewToReturn = const Center(
                child: CircularProgressIndicator(),
              );
            }, showScreen: () {
              viewToReturn = _buildAddPostScreen(context);
            }, showScreenWithImage: () {
              viewToReturn = _buildAddPostScreenWithImage(context);
            }, showSuccess: () {
              viewToReturn = _buildSuccessScreen();
            }, unauthicated: () {
              viewToReturn = _buildSignInPopUp();
            }, errorLoading: () {
              viewToReturn = _errorLoadingBuilder();
            }, uploadingPost: () {
              viewToReturn = _showLoadingProcess(context);
            });
            return viewToReturn;
          })),
      bottomNavigationBar: Footer(),
    );
  }



  Widget _buildSignInPopUp() {
    return AlertDialog(
      title: Text('Вы не вошли в систему'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false, pageBuilder: (_, __, ___) => SignInScreen()),
            );
          },
          child: Text('Войти'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false, pageBuilder: (_, __, ___) => SignUpScreen()),
            );
          },
          child: Text('Зарегистрироваться'),
        ),
      ],
    );
  }

  Widget _buildAddPostScreenWithImage(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _buildTopToolbar(),
          _buildTextField(),
          Expanded(child: _buildImageSpace()),
          _buildAddPhotoButton(context)
        ],
      ),
    );
  }

  Widget _buildAddPostScreen(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _buildTopToolbar(),
          Expanded(child: _buildTextField()),
          _buildAddPhotoButton(context)
        ],
      ),
    );
  }

  Widget _buildImageSpace() {
    return Center(
        child: Container(
      margin: EdgeInsets.all(10),
      child: Image.file(_addPostScreenBloc.imageFile, width: 400, height: 400),
    ));
  }

  Widget _buildTopToolbar() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ))),
          _buildPublishButton(),
        ],
      ),
    );
  }

  Widget _buildPublishButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 30),
        maximumSize: const Size(200, 30),
      ),
      onPressed: () {
        if (_buttonsEnabled) {
          if (textController.text.isNotEmpty) {
            _addPostScreenBloc.add(AddPostScreenEvent.setLoading());
            _addPostScreenBloc
                .add(AddPostScreenEvent.send(textController.text));
          }
        } else {
          null;
        }
      },
      child: Text('Опубликовать'),
    );
  }

  Widget _buildTextField() {
    return TextFormField(
      maxLines: _maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Введите свои мысли сюда...',
        errorText: validateText(textController.text),
      ),
      controller: textController,
      onChanged: (_) => setState(() {}),
    );
  }

  Widget _buildAddPhotoButton(BuildContext context) {
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
              if(_buttonsEnabled){
                _showChoosePictureDialog(context);
              }
              else{
                null;
              }

            },
            child: Text('Добавить фото'),
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

  Widget _showLoadingProcess(BuildContext context) {
    _buttonsEnabled = false;
    if (_addPostScreenBloc.imageFile != null) {
      return Stack(
        children: [
          AnimatedOpacity(
              opacity: 0.6,
              duration: const Duration(milliseconds: 100),
              child: _buildAddPostScreenWithImage(context)),
          LoadingBar(text: loadingText)
        ],
      );
    } else {
      return Stack(
        children: [
          AnimatedOpacity(
              opacity: 0.6,
              duration: const Duration(milliseconds: 100),
              child: _buildAddPostScreen(context)),
          LoadingBar(text: loadingText)
        ],
      );
    }
  }



  Widget _buildLoadingBar() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Colors.white,
        width: 250.0,
        height: 100.0,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Center(child: new CircularProgressIndicator())),
            Expanded(
                child: Text(
              'Подождите, пост публикуется',
              style: TextStyle(
                fontSize: 16,
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildSuccessScreen() {
    return Stack(
      children: [
        AnimatedOpacity(
            opacity: 0.6,
            duration: const Duration(milliseconds: 100),
            child: _buildAddPostScreenWithImage(context)),
        _buildSuccessAlert()
      ],
    );

  }

  Widget _buildSuccessAlert(){
    return AlertDialog(
      title: Text('Пост успешно опубликован'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  opaque: false, pageBuilder: (_, __, ___) => HomeScreen()),
            );
          },
          child: Text('На главную'),
        ),
      ],
    );
  }

  void _showChoosePictureDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text('Добавить фото'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _openGallery();
                  },
                  child: Text('Галерея'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _openCamera();
                  },
                  child: Text('Камера'),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Назад'))
              ],
            ));
  }

  _openGallery() async {
    var picture = await ImagePicker().pickImage(source: ImageSource.gallery);
    File file = File(picture!.path);
    _addPostScreenBloc.setSelectImage(file);
    _addPostScreenBloc.add(AddPostScreenEvent.imageChosen());
  }

  _openCamera() async {
    var picture = await ImagePicker().pickImage(source: ImageSource.camera);
    File file = File(picture!.path);
    _addPostScreenBloc.setSelectImage(file);
    _addPostScreenBloc.add(AddPostScreenEvent.imageChosen());
  }

  String? validateText(String value) {
    if (value.isEmpty) {
      return "Заполните обязательное поле!";
    }
    return null;
  }
}
