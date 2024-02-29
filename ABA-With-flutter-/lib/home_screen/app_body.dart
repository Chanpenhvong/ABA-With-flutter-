import 'package:aba_clone_ui/my_colors/colors.dart';
import 'package:flutter/material.dart';

class app_body extends StatelessWidget {
  const app_body({Key? key}) : super(key: key);

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
    {"title": "12Account", "icon": Icons.event_note},
    {"title": "Cash to ATM", "icon": Icons.local_atm_rounded},
    {"title": "Transfers", "icon": Icons.swap_horizontal_circle},
    {"title": "Scan QR", "icon": Icons.qr_code_scanner_outlined},
    {"title": "Loans", "icon": Icons.monetization_on_outlined},
    {"title": "Locator", "icon": Icons.location_on},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                  colors: [Colors.white10, baseColor], radius: 0.5),
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: buttonList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  childAspectRatio: 0.9),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: baseColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        buttonList[index]['icon'],
                        size: 38,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        buttonList[index]['title'],
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: quickTransferColor,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick Transfer',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Create your templates here to make\ntranfer quicker',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: quickPaymentColor,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick Payment',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Paying your bills with templates is faster',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
