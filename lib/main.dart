import 'package:flutter/material.dart';
import 'package:museumapp/screens/guide.dart';
import 'package:museumapp/screens/utstilling_selection.dart';
import 'package:museumapp/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:museumapp/selections/language.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Language(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Roboto'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/guide': (context) => UtstillingSelection(),
          '/guide1': (context) => Guide(),
        },
        title: 'Luftfartsmuseum',
      ),
    );
  }
}
