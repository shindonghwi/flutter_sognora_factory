import 'package:flutter/material.dart';
import 'package:flutter_sognora_factory/view/component/button/switch_theme_toggle_button.dart';

class WebPageHome extends StatefulWidget {
  const WebPageHome({super.key});

  @override
  State<WebPageHome> createState() => _WebPageHomeState();
}

class _WebPageHomeState extends State<WebPageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Column(children: [
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                  minWidth: viewportConstraints.maxWidth,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("111 : "), Text("222 : ")],
                    ),
                    Text(
                      style: TextStyle(fontSize: 35),
                      'AppBar',
                    ),
                  ],
                ),
              ),
            )
          ]);
        },
      ),
    );
  }
}
