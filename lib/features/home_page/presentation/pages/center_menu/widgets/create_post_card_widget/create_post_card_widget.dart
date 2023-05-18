

import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/create_post_card_widget/widgets/create_post_field_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/create_post_card_widget/widgets/create_post_item_row_widget.dart';
import 'package:flutter/material.dart';

class CreatePostCardWidget extends StatelessWidget {
  const CreatePostCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 660,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                children: [
                  CreatePostFieldWidget(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(),
                  ),
                  CreatePostItemRowWidget()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}