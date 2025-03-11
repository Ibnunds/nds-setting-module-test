import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        leading: BackButton(
          onPressed: () {
            if (Get.nestedKey(1)?.currentState?.canPop() ?? false) {
              Get.back(
                id: 1,
              ); // Jika ada halaman di navigator module, pop dari situ
            } else {
              Get.back(); // Jika tidak, pop dari navigator utama
            }
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("INI SETTING SCREEN"),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/detail', id: 1);
                },
                child: Text("Go to detail settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
