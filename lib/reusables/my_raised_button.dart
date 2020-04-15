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
              colors: [
                Color(0xff253746),
                Color(0xff4ec3e0),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff101820),
                fontWeight: FontWeight.w600,
//                  shadows: [
//                    Shadow(
//                      color: Colors.black,
//                      offset: Offset(1, 1),
//                      blurRadius: 3,
//                    )
//                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
