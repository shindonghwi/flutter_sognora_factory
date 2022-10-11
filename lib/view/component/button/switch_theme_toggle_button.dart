import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sognora_factory/provider/theme_notifier.dart';
import 'package:flutter_sognora_factory/values/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// dark, light 모드를 전환 할 수 있는 위젯이다.
class SwitchThemeToggleButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __SwitchThemeToggleButtonState();
}

class __SwitchThemeToggleButtonState extends State<SwitchThemeToggleButton> {
  late bool _isDarkMode;
  String _imagePath = "";

  @override
  void initState() {
    super.initState();
    (() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        setThemeData(prefs);
      });
    })();
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return IconButton(
      icon: Image(image: AssetImage(_imagePath)),
      iconSize: 50,
      onPressed: () {
        onThemeChanged(!_isDarkMode, themeNotifier);
      },
    );
  }

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    (value)
        ? themeNotifier.setTheme(darkTheme)
        : themeNotifier.setTheme(lightTheme);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
    setThemeData(prefs);
  }

  void setThemeData(SharedPreferences prefs) {
    _isDarkMode = prefs.getBool("darkMode") ?? false;
    _imagePath = _isDarkMode
        ? "asset/icon/dark_mode.webp"
        : "asset/icon/light_mode.webp";
  }
}
