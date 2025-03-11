import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

void main() => runApp(const SettingModule());

class SettingModule extends StatelessWidget {
  const SettingModule({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Setting Module',
      initialRoute: "/setting",
      routes: {
        "/setting": (context) => SettingScreen(),
        "/detail": (context) => DetailScreen(),
      },
      home: SettingScreen(),
    );
  }
}
