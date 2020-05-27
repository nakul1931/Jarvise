import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
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
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
    );
  }
}
