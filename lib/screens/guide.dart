import 'dart:math';
import 'dart:ui';
// Don't forget IOS asset permission if needed
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:museumapp/reusables/slide_transition.dart';
import 'package:museumapp/screens/utstilling_selection.dart';

import 'package:museumapp/selections/language.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Guide extends StatefulWidget {
  @override
  _GuideState createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  static final assetPlayer = AssetsAudioPlayer();

  int playing = 1;

  void initPlay() {
    assetPlayer.open(Audio(
        "assets/audio/audio${Provider.of<Language>(context, listen: false).index}.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        elevation: 10,
        gradient: LinearGradient(
          colors: [Color(0xff253746), Color(0xff4EC7E5)],
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
          TabItem(
              icon: (playing == 1 || playing == 3)
                  ? Icons.play_arrow
                  : Icons.pause,
              title: 'Play'),
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
            assetPlayer.dispose();
            Provider.of<Language>(context, listen: false).resetIndex();
            setState(() {
              playing = 1;
            });
            Navigator.push(
                context, SlideRightRoute(widget: UtstillingSelection()));
            //  Navigator.popAndPushNamed(context, '/guide');
          } else if (i == 1) {
            print('Previous');
            assetPlayer.stop();
            assetPlayer.dispose();
            setState(() {
              playing = 1;
            });
            Provider.of<Language>(context, listen: false).decreaseIndex();
            Navigator.popAndPushNamed(context, '/guide1');
          } else if (i == 3) {
            assetPlayer.stop();
            assetPlayer.dispose();
            setState(() {
              playing = 1;
            });

            Provider.of<Language>(context, listen: false).increaseIndex();
            Navigator.popAndPushNamed(context, '/guide1');
          } else if (i == 2) {
            if (playing == 1) {
              initPlay();
              setState(() {
                playing = 2;
              });
            } else if (playing == 2) {
              assetPlayer.pause();
              setState(() {
                playing = 3;
              });
            } else if (playing == 3) {
              assetPlayer.play();
              setState(() {
                playing = 2;
              });
            }

            print(playing);
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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffE4E6E5),
                      Color(0xffE4E6E5),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4,
                      right: 20,
                      left: 20,
                      bottom: 20),
                  children: [
                    Text(
                      Provider.of<Language>(context).isCivilSide
                          ? Provider.of<Language>(context).getTitle()
                          : Provider.of<Language>(context).getTitleMil(),
                      textAlign: TextAlign.center,
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
                    Text(
                      Provider.of<Language>(context).isCivilSide
                          ? Provider.of<Language>(context).getDescriptionCivil()
                          : Provider.of<Language>(context).getDescriptionMil(),
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff302c2c),
                          fontFamily: 'GothamMedium',
                          height: 1.5),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/image${Provider.of<Language>(context).index}.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
