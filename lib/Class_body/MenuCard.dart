import 'package:flutter/material.dart';
import '../Password/PIN.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 133, 162, 244),
        // borderRadius: BorderRadius.circular(10.0),
        // color: Theme.of(context).colorScheme.secondary,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 207, 234, 255),
          // foregroundColor: Colors.black,
        ),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateColor.resolveWith(
        //       (states) => Theme.of(context).colorScheme.inverseSurface),
        // ),
        onPressed: () {
          showDialog(context: context, builder: (_) => const PIN());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              // color: Theme.of(context).colorScheme.surface,
              color: const Color.fromARGB(255, 62, 16, 226),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 15,
                  // color: Theme.of(context).colorScheme.surface,
                  color: Color.fromARGB(255, 62, 16, 226),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
