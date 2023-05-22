import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:facebook_web_clone/features/market_place_page/widgets/market_place_right_menu/widgets/single_market_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketPlaceRightMenu extends StatelessWidget {
  const MarketPlaceRightMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Today's Picks",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue[700],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Topi, Pakistan",
                      style: TextStyle(color: Colors.blue[700], fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GridView.builder(
            itemCount: 15,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.9,
                mainAxisSpacing: 0,
                crossAxisSpacing:5
            ),
            itemBuilder: (context, index){
              return SingleMarketCardWidget();
            },
          ),

        ],
      ),
    );
  }

  _rowButtons({
    IconData? icon,
    String? text,
  }) {
    return Container(
      width: 210,
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.grey[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
          ),
          SizedBox(width: 8),
          Text(
            "$text",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          )
        ],
      ),
    );
  }
}