



import 'package:flutter/material.dart';

class SingleContactWidget extends StatelessWidget {
  const SingleContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          CircleAvatar(radius: 20,),
          SizedBox(width: 15,),
          Text("Username",style: TextStyle(
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
