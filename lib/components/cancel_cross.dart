import 'package:flutter/material.dart';

class CancelCross extends StatelessWidget{
  const CancelCross({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext buildContext){
    return Container(
      height: 30,
      width: 30,
      child: Icon(Icons.cancel),
    );
  }
}
