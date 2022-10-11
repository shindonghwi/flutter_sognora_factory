import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sognora_factory/provider/models/platform_type.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeNotifier(this._themeData);

  ThemeData _themeData;
  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }

  /// 실행한 플랫폼을 반환해주는 함수
  PlatformType getPlatform() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return PlatformType.android;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return PlatformType.ios;
    } else {
      return PlatformType.web;
    }
  }
}
