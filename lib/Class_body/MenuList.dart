import 'package:flutter/material.dart';
import '../../models/MenuData.dart';
// import '../../my_colors/ColorAsset.dart';
import 'MenuCard.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key, required this.remineSpace}) : super(key: key);
  final double remineSpace;
  @override
  Widget build(BuildContext context) {
    //double reminespace=(MediaQuery.of(context).size.height-kToolbarHeight-MediaQuery.of(context).padding.top)/5;
    return Flexible(
      flex: 3,
      child: Container(
        // color: Colors.blue,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 65, 131, 230),
              width: 12,
            ),
          ),
          // color: Theme.of(context).colorScheme.secondary,
          gradient: RadialGradient(
            radius: 1,
            colors: [
              Color.fromARGB(255, 6, 11, 169),
              Color.fromARGB(255, 227, 44, 236),
              Color.fromARGB(255, 22, 232, 106),
              Color.fromARGB(255, 248, 6, 232),
            ],
          ),
        ),
        // color: Colors.blue,
        child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              mainAxisExtent: remineSpace - 6),
          children: [
            ...List.generate(
              9,
              (index) => MenuCard(
                  title: MenuData.MenuListData[index].title,
                  icon: MenuData.MenuListData[index].icon),
            ),
          ],
        ),
      ),
    );
  }
}
