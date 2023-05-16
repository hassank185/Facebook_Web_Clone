



import 'package:flutter/material.dart';

class TopCenterCardWidget extends StatelessWidget {
  const TopCenterCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1,
      child: Container(
        height: 100,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
