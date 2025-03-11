import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_module/pages/detail_sccreen.dart';
import 'package:settings_module/pages/setting_screen.dart';

class SettingModule extends StatelessWidget {
  const SettingModule({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Mencegah keluar langsung dari module
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          // Jika masih ada halaman dalam stack, pop dari navigator module
          if (Get.nestedKey(1)?.currentState?.canPop() ?? false) {
            Get.back(id: 1);
          } else {
            Get.back(); // Jika sudah di SettingScreen, kembali ke host
          }
        }
      },
      child: Navigator(
        key: Get.nestedKey(1),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/detail':
              return GetPageRoute(page: () => DetailScreen());
            default:
              return GetPageRoute(page: () => SettingScreen());
          }
        },
      ),
    );
  }
}
