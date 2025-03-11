import 'package:flutter/material.dart';
import 'package:nawa_utils/utils.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

class SettingModule extends StatelessWidget {
  const SettingModule({super.key});

  @override
  Widget build(BuildContext context) {
    return NawaUtils.buildModuleApp(
      id: 1,
      routes: {
        "/setting": () => SettingScreen(),
        "/detail": () => DetailScreen(),
      },
      initialScreen: () => SettingScreen(),
    );
  }
}
