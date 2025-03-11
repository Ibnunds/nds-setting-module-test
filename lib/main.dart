import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

class SettingModule extends StatelessWidget {
  const SettingModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/detail":
            return GetPageRoute(page: () => DetailScreen());
          default:
            return GetPageRoute(page: () => SettingScreen());
        }
      },
    );
  }
}
