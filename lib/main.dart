import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

class SettingModule extends StatelessWidget {
  const SettingModule({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Setting Module',
      initialRoute: "/setting",
      getPages: [
        GetPage(name: "/setting", page: () => SettingScreen()),
        GetPage(name: "/detail", page: () => DetailScreen()),
      ],
    );
  }
}
