import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

class SettingModule extends StatelessWidget {
  final Function(String) onRouteChanged;

  const SettingModule({super.key, required this.onRouteChanged});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      observers: [
        GetObserver((routing) {
          if (routing?.current != null) {
            onRouteChanged(routing!.current); // Kirim current route ke host
          }
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
