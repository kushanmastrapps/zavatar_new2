import 'package:flutter/material.dart';

class PrivatePage extends StatelessWidget {
  const PrivatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Memories', style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
