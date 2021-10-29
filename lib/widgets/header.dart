import 'package:flutter/material.dart';
import 'package:workshop/constraints.dart';

// app header widget
class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
      child: Row(
        children: [
          // Here all widget
          ClipOval(
            child: Image.network(
              'https://media-exp1.licdn.com/dms/image/C4E03AQGRryhBDekfKw/profile-displayphoto-shrink_800_800/0/1634139119102?e=1640217600&v=beta&t=1L7EdCH1_WKAgxqU_3cAKFBZZzEUqN9bU8fntDuojeY',
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello Abdallah',
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Good Morning',
                style: TextStyle(fontSize: 12, color: mainColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}