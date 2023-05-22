









import 'package:facebook_web_clone/features/market_place_page/widgets/market_place_left_menu/market_place_left_menu_widget.dart';
import 'package:facebook_web_clone/features/market_place_page/widgets/market_place_right_menu/market_place_right_menu.dart';
import 'package:facebook_web_clone/features/watch_page/widgets/left_menu/watch_page_left_menu.dart';
import 'package:facebook_web_clone/features/watch_page/widgets/watch_right_menu/watch_right_menu.dart';
import 'package:flutter/material.dart';

class MarketPlacePage extends StatelessWidget {
  const MarketPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 2,child: MarketPlaceLeftMenuWidget()),
        SizedBox(width: 14,),
        Expanded(flex: 5,child: MarketPlaceRightMenu())

      ],
    );
  }
}
