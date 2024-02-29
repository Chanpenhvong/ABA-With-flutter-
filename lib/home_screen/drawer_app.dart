import 'package:aba_clone_ui/my_colors/ColorAsset.dart';
import 'package:aba_clone_ui/my_colors/colors.dart';
import 'package:flutter/material.dart';

class drawer_app extends StatefulWidget {
  const drawer_app({Key? key}) : super(key: key);

  @override
  State<drawer_app> createState() => _drawer_appState();
}

class _drawer_appState extends State<drawer_app> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorAsset.colorsBody,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 65),
            Title(
              color: Colors.red,
              child: const Center(
                child: Text(
                  "ABA' Setting",
                  style: TextStyle(
                    fontSize: 27,
                    color: Color.fromARGB(255, 81, 43, 249),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 2,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Your Imformation Ditail',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.red,
                // color: ColorAsset.colorsBody,
                border: Border(
                  bottom: BorderSide(
                      width: 0.5, color: Color.fromARGB(255, 240, 37, 213)),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 0, 255, 34),
                          width: 1.7),
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'lib/assets/images/my_profile.jpg',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('reaksmey ROEM',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      SizedBox(height: 8),
                      Text('App ID : 012345',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_today_rounded,
                color: Colors.white,
              ),
              title: const Text(
                'Scheduled Payment',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   leading: const Icon(
            //     Icons.location_on,
            //     color: Colors.white,
            //   ),
            //   title: const Text(
            //     'ABA PAY Places',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: const Icon(
                Icons.monetization_on,
                color: Colors.white,
              ),
              title: const Text(
                'Exchange Rates',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.phone_in_talk,
                color: Colors.white,
              ),
              title: const Text(
                'Contact Us',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              title: const Text(
                'Terms & Conditions',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print("Click On Setting !");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
