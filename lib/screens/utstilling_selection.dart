import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:museumapp/reusables/my_clipper.dart';
import 'package:museumapp/reusables/my_raised_button.dart';
import 'package:museumapp/selections/language.dart';

import 'package:provider/provider.dart';

class UtstillingSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff4EC7E5), Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 40),
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyRaisedButton(
                          title:
                              '${Provider.of<Language>(context).civilText(true)}',
                          navigator: () {
                            Navigator.pushNamed(context, '/guide1');
                          },
                        ),
                        MyRaisedButton(
                          title:
                              '${Provider.of<Language>(context).civilText(false)}',
                          navigator: () {
                            Navigator.pushNamed(context, '/guide1');
                          },
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: ClipPath(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff8360c3),
                        Color(0xff91eae4),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  //filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Image.asset(
                          'assets/images/nlm_logo.png',
                          height: 85,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 300,
                        child: Image.asset(
                          'assets/images/Jagerfly.png',
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: MyClipper(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
