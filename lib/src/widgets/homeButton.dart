import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String imageName;
  final Function onTap;

  const HomeButton({@required this.imageName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 65.0,
      minWidth: 65.0,
      buttonColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: RaisedButton(
        onPressed: onTap,
        child: Container(
          height: 40.0,
          width: 40.0,
          child: Image(
            image: AssetImage("assets/$imageName"),
          ),
        ),
      ),
    );
  }
}
