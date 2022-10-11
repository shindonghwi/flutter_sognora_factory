import 'package:flutter/material.dart';
import 'package:flutter_sognora_factory/values/strings.dart';
import 'package:flutter_sognora_factory/values/theme.dart';
import 'package:flutter_sognora_factory/provider/models/platform_type.dart';
import 'package:flutter_sognora_factory/provider/theme_notifier.dart';
import 'package:flutter_sognora_factory/view/page/home/mobile/home.dart';
import 'package:flutter_sognora_factory/view/page/home/web/home.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    var hasDarkModeOption = prefs.getBool('darkMode') ?? false;
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeNotifier(
            hasDarkModeOption ? darkTheme : lightTheme,
          ),
        )
      ],
      child: MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late PlatformType _type;

  PlatformType get type => _type;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: app_title,
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      home: themeNotifier.getPlatform() == PlatformType.web
          ? const WebPageHome()
          : const MobilePageHome(),
    );
  }
}
