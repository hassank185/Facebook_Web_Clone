




import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:facebook_web_clone/features/market_place_page/widgets/market_place_left_menu/widgets/categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarketPlaceLeftMenuWidget extends StatelessWidget {
  const MarketPlaceLeftMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:1),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      color: Colors.white,
      height: 855,
      width: 330,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MarketPlace",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: bodyColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(Icons.settings),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bodyColor,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search MarketPlace",
                ),
              ),
            ),
            SizedBox(height: 10,),
            _watchRowIconWidget(icon: FontAwesomeIcons.store,text: "Browse all"),
            SizedBox(height: 10,),
            _watchRowIconWidget(icon: FontAwesomeIcons.solidBell,text: "Notification"),
            SizedBox(height: 10,),
            _watchRowIconWidget(icon: FontAwesomeIcons.inbox,text: "Inbox"),
            SizedBox(height: 10,),
            _watchRowIconWidget(icon: Icons.shopping_cart,text: "Shopping"),
            SizedBox(height: 10,),
            _watchRowIconWidget(icon: FontAwesomeIcons.sellcast,text: "Selling"),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 65),
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue[100]
              ),
              child: Row(
                children: [
                  Icon(Icons.add,color: blueColor,),
                  SizedBox(width: 10,),
                  Text("Create new listing",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Divider(),
            Text("Filters",style: TextStyle(fontWeight: FontWeight.bold),),
     SizedBox(height: 15,),
        Text("California Street 101, United States America\nWithin 94 kilometers",style: TextStyle(color: blueColor,fontWeight: FontWeight.bold),)
           , Divider(),
            Text("Categories",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            CategoriesWidget()
          ],
        ),
      ),
    );
  }
  _watchRowIconWidget({required IconData icon,required String text}){
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: bodyColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(icon,size: 20,),
        ),
        SizedBox(width: 15,),
        Text("$text",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
      ],
    );
  }
}
