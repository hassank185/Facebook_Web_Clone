


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleMarketCardWidget extends StatelessWidget {
  const SingleMarketCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,

          width: 270,
          decoration: BoxDecoration(
              color: Colors.grey,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        SizedBox(height: 10,),
        Text("Rs: 45,000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black
        ),),
        SizedBox(height: 10,),
        Text("I Phone X Exchange Possible",style: TextStyle(fontSize: 14,color: Colors.black
        ),),SizedBox(height: 10,),
        Text("Rawalpindi, Pakistan",style: TextStyle(fontSize: 12,color: Colors.grey
        ),)

      ],
    );
  }
}