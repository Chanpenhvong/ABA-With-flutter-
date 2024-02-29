import 'package:aba_clone_ui/home_screen/app_bar.dart';
// import 'package:aba_clone_ui/home_screen/app_body.dart';
import 'package:aba_clone_ui/home_screen/app_body_sty2.dart';
import 'package:aba_clone_ui/home_screen/drawer_app.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class main_screen extends StatelessWidget {
  const main_screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ABA Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List buttonList = [
    {"title": "Accounts", "icon": Icons.account_balance_wallet_outlined},
    {"title": "Cards", "icon": Icons.credit_card_outlined},
    {"title": "Payments", "icon": Icons.monetization_on},
    {"title": "New Account", "icon": Icons.event_note},
    {"title": "Cash to ATM", "icon": Icons.local_atm_rounded},
    {"title": "Transfers", "icon": Icons.swap_horizontal_circle},
    {"title": "Scan QR", "icon": Icons.qr_code_scanner_outlined},
    {"title": "Loans", "icon": Icons.monetization_on_outlined},
    {"title": "Locator", "icon": Icons.location_on},
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: app_Bar(context),
          // body: const app_body(),
          body: const app_body_sty2(),
          drawer: const drawer_app(),
        )
      ],
    );
  }
}
