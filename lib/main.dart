import 'package:flutter/material.dart';
import 'package:travelbug/profile.dart';
import 'package:travelbug/signup.dart';

import 'ExplorePage.dart';
import 'MyHomePage.dart';
import 'destination.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: '',),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/explore': (context) => ExplorerPage(),
        '/destination_details': (context) => DestinationDetailsPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}























