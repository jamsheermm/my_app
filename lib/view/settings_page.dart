import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/settings_controller.dart';

import '../utils/constants.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);
  final SettingsController settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            title: Text(Constants.aboutUs),
            leading: Icon(Icons.info),
          ),
          const ListTile(
            title: Text(Constants.contactUs),
            leading: Icon(Icons.call),
          ),
          ListTile(
            title: const Text(Constants.notifications),
            leading: const Icon(Icons.notifications),
            trailing: Obx(() => Switch(
                value: settingsController.switchTurnedOn.value,
                onChanged: settingsController.onTappedSwitch)),
          ),
        ],
      ),
    );
  }
}
