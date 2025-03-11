import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

class SettingModule extends StatelessWidget {
  final Function(String?) onRouteChange;
  const SettingModule({super.key, required this.onRouteChange});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      observers: [
        GetObserver((routing) {
          onRouteChange(routing?.current);
        }),
      ],
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/detail':
            return GetPageRoute(page: () => DetailScreen());
          default:
            return GetPageRoute(page: () => SettingScreen());
        }
      },
    );
  }
}
