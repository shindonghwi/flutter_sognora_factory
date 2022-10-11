import 'package:flutter/material.dart';

class MobilePageHome extends StatefulWidget {
  const MobilePageHome({super.key});

  @override
  State<MobilePageHome> createState() => _MobilePageHomeState();
}

class _MobilePageHomeState extends State<MobilePageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
