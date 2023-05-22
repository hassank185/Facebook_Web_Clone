


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _watchRowIconWidget(icon: FontAwesomeIcons.car,text: "Vehicles"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.house,text: "Property for rent"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.chain,text: "Classfields"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.shirt,text: "Clothing"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.mobile,text: "Electronic"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.video,text: "Entertainment"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.heart,text: "Family"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.freebsd,text: "Free stuff"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: Icons.energy_savings_leaf,text: "Garden and outdoors"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.homeLg,text: "Home goods"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.wrench,text: "Home improvement supplies"),
        SizedBox(height: 10,),
        _watchRowIconWidget(icon: FontAwesomeIcons.guitar,text: "Instruments"),
        SizedBox(height: 10,),

      ],
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
