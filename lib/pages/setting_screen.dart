import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nawa_utils/utils.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        leading: NawaUtils.initialLeadingBackButton(id: 1),
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
