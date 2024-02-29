import 'package:aba_clone_ui/Class_body/MenuList.dart';
import 'package:aba_clone_ui/Class_body/QuickCard.dart';
import 'package:aba_clone_ui/my_colors/ColorAsset.dart';
import 'package:flutter/material.dart';

class app_body_sty2 extends StatelessWidget {
  const app_body_sty2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double remineSpace = (MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight -
            MediaQuery.of(context).padding.bottom -
            MediaQuery.of(context).padding.top) /
        5;
    // print("Remine Space = ${remineSpace/5}");
    return Stack(
      children: [
        Scaffold(
          // drawer: AppDrawer(),
          // appBar: AppAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MenuList(
                remineSpace: remineSpace,
              ),
              QuickCard(
                title: "Quick Transfer",
                description:
                    "Create your template here to make transfer quicker",
                color: ColorAsset.cyanColor,
                remineSpace: remineSpace,
                backgroundIcon: Icons.swap_horizontal_circle_sharp,
              ),
              QuickCard(
                title: "Quick Payment",
                description: "Paying your bills with templates is faster",
                color: ColorAsset.redColor,
                remineSpace: remineSpace,
                backgroundIcon: Icons.monetization_on_rounded,
              )
            ],
          ),
        ),
      ],
    );
  }
}
