import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zavatar_new/pages/friends.dart';
import 'package:zavatar_new/pages/memories.dart';
import 'package:zavatar_new/pages/home.dart';
import 'package:zavatar_new/pages/activites.dart';
import 'package:zavatar_new/pages/private.dart';
import 'package:zavatar_new/navigationdrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zavatar',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    MainPage(),
    FriendsPage(),
    ActivitesPage(),
    MemoriesPage(),
    PrivatePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        title: Text('ZAVATARS'),
        actions: [
          Padding(padding: EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: (){},
            child: Icon(Icons.add),
          ),
          ),
          Padding(padding: EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: (){},
            child: Icon(Icons.share),
          ),
          ),
          Padding(padding: EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: (){},
            child: Icon(Icons.search),
          ),
          ),
        ],
      ),
      drawer: NavDrawer(),
      body: Container(child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(111, 24, 157, 1),
        selectedItemColor: const Color.fromRGBO(255, 191, 0, 1),
        unselectedItemColor: Colors.white60,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.link),
            label: 'Activites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            label: 'Memories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Private',
          ),
        ],
      ),
    );
  }
}
