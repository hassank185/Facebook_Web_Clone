




import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WatchPageLeftMenu extends StatelessWidget {
  const WatchPageLeftMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:1),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      color: Colors.white,
      height: 855,
      width: 330,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black ),
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
                hintText: "Search videos",
              ),
            ),
          ),
          SizedBox(height: 10,),
          _watchRowIconWidget(icon: FontAwesomeIcons.youtube,text: "Home"),
          SizedBox(height: 10,),
          _watchRowIconWidget(icon: FontAwesomeIcons.video,text: "Live"),
          SizedBox(height: 10,),
          _watchRowIconWidget(icon: FontAwesomeIcons.play,text: "Reels"),
          SizedBox(height: 10,),
          _watchRowIconWidget(icon: Icons.movie_sharp,text: "Shows"),
          SizedBox(height: 10,),
          _watchRowIconWidget(icon: FontAwesomeIcons.solidBookmark,text: "Saved videos"),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
  _watchRowIconWidget({required IconData icon,required String text}){
    return Row(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: bodyColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(icon),
        ),
        SizedBox(width: 15,),
        Text("$text",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
      ],
    );
  }
}
