// import 'package:aba_clone_ui/views/scan_button.dart';
import 'package:aba_clone_ui/my_colors/ColorAsset.dart';
import 'package:aba_clone_ui/views/notification/notifications_button.dart';
import 'package:aba_clone_ui/views/scan_button.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar app_Bar(context) {
  return AppBar(
    backgroundColor: ColorAsset.colorsAppbar,
    elevation: 0,
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () => {
          Scaffold.of(context).openDrawer(),
          print("Click On menu"),
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 29,
        ),
        splashRadius: 25,
      ),
    ),
    title: const Stack(
      children: [
        Text(
          "ABA",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text("       '",
            style: TextStyle(
                fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
            textAlign: TextAlign.end),
      ],
    ),
    actions: [
      Builder(
        builder: (context) => IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const notifications_button(),
                ),
              );
              print("Click On Button Notification! ");
            },
            splashRadius: 25,
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black87,
              size: 35,
            )),
      ),
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        width: 35,
        decoration: BoxDecoration(
            color: const Color(0xFFE64D3D),
            borderRadius: BorderRadius.circular(10)),
        child: IconButton(
            onPressed: () {
              // Navigate to ScanButton when the QR code icon is clicked
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const scan_button()),
              );
              print("Click On Button KHQR_code! ");
            },
            splashRadius: 27,
            icon: const Icon(
              Icons.qr_code_2,
              size: 20,
            )),
      ),
      const SizedBox(
        width: 15,
      )
    ],
  );
}
