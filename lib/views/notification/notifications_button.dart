import 'package:aba_clone_ui/my_colors/ColorAsset.dart';
import 'package:aba_clone_ui/views/notification/notification_body.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class notifications_button extends StatelessWidget {
  const notifications_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAsset.colorsBody,
      appBar: AppBar(
        backgroundColor: ColorAsset.colorsAppbar,
        title: const Text(
          "ABA Notifications",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: notification_body(),
    );
  }
}
