


import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/widgets/footer_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/widgets/left_side_menu_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/widgets/left_side_nav_bar_shortcut_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/right_menu/widgets/birthday_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/right_menu/widgets/messenger/contact_messenger_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/right_menu/widgets/pages_profile_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/right_menu/widgets/sponsored_widget.dart';
import 'package:flutter/material.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 20,),
            SponsoredWidget(),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            PagesProfileWidget(),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            BirthDayWidget(),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            ContactMessengerWidget(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
