


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftSideMenuWidget extends StatelessWidget {
  const LeftSideMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(

          children: [
            CircleAvatar(radius: 20,),
            SizedBox(width: 10),
            Text("Muhammad Hassan",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.person_2,text: "Friends",size:35,),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.groups,text: "Groups",size:35,),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.timelapse_outlined,text: "Most recents",size:35,),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: FontAwesomeIcons.store,size:30,text: "MarketPlace"),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: FontAwesomeIcons.youtube,size:30,text: "Watch"),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.timelapse_rounded,text: "Memories",size:35,),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.bookmark,text: "Saved",size:35,),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.flag,text: "Pages",size:35,),
        SizedBox(height: 18,),
        _leftSideRowWidget(icon: Icons.event,text: "Events",size:35,),
        SizedBox(height: 18,),
        Row(

          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300],
              ),
              child: Icon(Icons.arrow_drop_down,size: 30,),
            ),
            SizedBox(width: 10),
            Text("See more",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
          ],
        ),
      ],

    );
  }
  _leftSideRowWidget({required IconData icon, required String text ,double? size}){
    return Row(
      children: [
        Icon(icon,size: size  ,),
        SizedBox(width: 10,),
        Text("$text",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),

      ],
    );
  }
}
