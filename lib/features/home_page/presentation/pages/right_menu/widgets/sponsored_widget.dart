




import 'package:flutter/material.dart';

class SponsoredWidget extends StatelessWidget {
  const SponsoredWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sponsored",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.grey[700]),),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child:  ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/sponsored_1.jpg",fit: BoxFit.cover,)),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Super Deals on\nLaptop",maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 5,),
                Text("www.something.com",style: TextStyle(color: Colors.grey
                ),)

              ],
            )
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/sponsored_2.jpg",fit: BoxFit.cover,)),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Buy Some Product\nand Enjoy",maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 5,),
                Text("www.something.com",style: TextStyle(color: Colors.grey
                ),)

              ],
            )
          ],
        )
      ],
    );
  }
}
