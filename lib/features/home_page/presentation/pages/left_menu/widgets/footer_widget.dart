



import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Privacy",style: TextStyle(fontSize: 13,color: Colors.grey),),
            Text("imprints/terms",style: TextStyle(fontSize: 13,color: Colors.grey),),
          ],
        ),
        Text("NetzDG/UrhDaG/ranking of content",style: TextStyle(fontSize: 13,color: Colors.grey),),
        Row(
          children: [
            Text("Advertising",style: TextStyle(fontSize: 13,color: Colors.grey),),
            Text("Ad choices",style: TextStyle(fontSize: 13,color: Colors.grey),),
            Text("Cookies",style: TextStyle(fontSize: 13,color: Colors.grey),),
          ],
        ),Row(
          children: [
            Text("More",style: TextStyle(fontSize: 13,color: Colors.grey),),
            Text("Meta © 2023 ",style: TextStyle(fontSize: 13,color: Colors.grey),),
          ],
        ),

      ],
    );
  }
}
