


import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/create_post_card_widget/create_post_card_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/center_menu_single_post_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/top_center_card_widget/top_center_card_widget.dart';
import 'package:flutter/material.dart';

class CenterMenu extends StatelessWidget {
  final Function(int)? onNavItemTapped;
  final int? selectedIndex;
  const CenterMenu({Key? key, this.onNavItemTapped, this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopCenterCardWidget(onNavItemTapped: onNavItemTapped,selectedIndex: selectedIndex),
        CreatePostCardWidget(),
        CenterMenuSinglePostWidget()
      ],
    );
  }
}
