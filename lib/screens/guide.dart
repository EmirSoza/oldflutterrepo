import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:museumapp/reusables/my_clipper.dart';
import 'package:museumapp/reusables/my_raised_button.dart';
import 'package:museumapp/selections/language.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        elevation: 10,
        gradient: LinearGradient(
          colors: [Colors.indigo, Color(0xff4EC7E5)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        style: TabStyle.fixedCircle,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(
              icon: Transform.rotate(
                angle: pi,
                child: FaIcon(
                  FontAwesomeIcons.fighterJet,
                  color: Colors.white,
                ),
              ),
              title: 'Previous'),
          TabItem(icon: Icons.play_arrow, title: 'Add'),
          TabItem(
              icon: FaIcon(
                FontAwesomeIcons.fighterJet,
                color: Colors.white,
              ),
              title: 'Next'),
          TabItem(icon: Icons.map, title: 'Map'),
        ],
        initialActiveIndex: 2, //optional, default as 0
        onTap: (int i) {
          if (i == 0) {
            Navigator.pop(context);
          }
        },
      ),
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
                  child: ListView(
                    children: [Text('')],
                  )),
            ),
            Container(
              child: ClipPath(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/museum1.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 200),
                    child: Text(
                      'Gelbe 3',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                blurRadius: 3,
                                offset: Offset(2, 2))
                          ]),
                    ),
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
