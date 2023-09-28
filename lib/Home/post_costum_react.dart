import 'package:flutter/material.dart';

class React extends StatelessWidget {
  String title;
  String image;
  React({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage(image), width: 25,),
        SizedBox(width: 8,),
        Text(title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,

          ),
        ),
      ],
    );
  }
}
