import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuDataFormat {
  MenuDataFormat({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

class MenuData {
  static List<MenuDataFormat> MenuListData = [
    MenuDataFormat(title: "Accounts", icon: Icons.account_balance_wallet),
    MenuDataFormat(title: "Cards", icon: Icons.credit_card_rounded),
    MenuDataFormat(title: "Payments", icon: Icons.monetization_on),
    // MenuDataFormat(title: "Account", icon: Icons.qr_code_2_rounded),
    MenuDataFormat(title: "Account", icon: Icons.add_box_rounded),
    MenuDataFormat(title: "CashATM", icon: Icons.store),
    MenuDataFormat(title: "Transfers", icon: Icons.swap_horizontal_circle),
    MenuDataFormat(title: "Scan QR", icon: Icons.qr_code_scanner_sharp),
    MenuDataFormat(title: "Loans", icon: Icons.clean_hands_sharp),
    MenuDataFormat(title: "Services", icon: Icons.grid_view_rounded),
  ];
}
