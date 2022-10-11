import 'package:flutter/material.dart';

class WebPageHome extends StatefulWidget {
  const WebPageHome({super.key});

  @override
  State<WebPageHome> createState() => _WebPageHomeState();
}

class _WebPageHomeState extends State<WebPageHome> {
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
