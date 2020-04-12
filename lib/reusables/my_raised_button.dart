import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final String title;

  final Function navigator;

  MyRaisedButton({this.title, this.navigator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 60,
      width: MediaQuery.of(context).size.width / 1.5,
      child: RaisedButton(
        padding: EdgeInsets.all(0.0),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: navigator,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              colors: [Color(0xff8360c3), Color(0xff64B6FF)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
