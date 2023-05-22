


import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/widgets/footer_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/widgets/left_side_menu_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/widgets/left_side_nav_bar_shortcut_widget.dart';
import 'package:flutter/material.dart';

class LeftSideMenu extends StatelessWidget {
  const LeftSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 20,),
            LeftSideMenuWidget(),
            SizedBox(height: 15,),
            Divider(
              color: Colors.black26,
            ),
            SizedBox(height:10,),
            LeftSideNavBarShorCutWidget(),
            SizedBox(height: 60,),
            FooterWidget(),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
