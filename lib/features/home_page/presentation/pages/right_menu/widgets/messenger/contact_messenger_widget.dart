


import 'package:facebook_web_clone/features/home_page/presentation/pages/right_menu/widgets/messenger/widgets/single_contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactMessengerWidget extends StatelessWidget {
  const ContactMessengerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Contacts",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.grey[700]),),
            Spacer(),
            Icon(FontAwesomeIcons.video,size: 16,),
            SizedBox(width: 15,),
            Icon(FontAwesomeIcons.search,size: 16,),
            SizedBox(width: 15,),
            Icon(Icons.more_horiz,size: 16,),
            SizedBox(width: 15,),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 16,
          itemBuilder: (context, index){
            return SingleContactWidget();
          },
        )
      ],
    );
  }
}
