import 'package:flutter/material.dart';
import 'package:museumapp/selections/language.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 'assets/images/museum1.jpg'
                  : 'assets/images/museum.jpg'),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Center(
                  child: Image.asset(
                    'assets/images/nlm_logo.png',
                    width: 250,
                    height: 120,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Card(
                        elevation: 30,
                        color: Colors.transparent,
                        child: IconButton(
                          iconSize: 60,
                          onPressed: () {
                            Provider.of<Language>(context, listen: false)
                                .setLanguage(0);
                            Navigator.popAndPushNamed(context, '/guide');
                          },
                          icon: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(
                              'assets/images/norsk.png',
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 30,
                        color: Colors.transparent,
                        child: IconButton(
                          iconSize: 60,
                          onPressed: () {
                            Provider.of<Language>(context, listen: false)
                                .setLanguage(2);
                            Navigator.popAndPushNamed(context, '/guide');
                          },
                          icon: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(
                              'assets/images/tysk.png',
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 30,
                        color: Colors.transparent,
                        child: IconButton(
                          iconSize: 60,
                          onPressed: () {
                            Provider.of<Language>(context, listen: false)
                                .setLanguage(1);
                            Navigator.popAndPushNamed(context, '/guide');
                          },
                          icon: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(
                              'assets/images/eng.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
