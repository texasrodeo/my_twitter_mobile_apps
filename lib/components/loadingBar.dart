import 'package:flutter/material.dart';

class LoadingBar extends StatelessWidget{

  final String text;

  const LoadingBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
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
                  text,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
