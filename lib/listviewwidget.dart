import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listviewitem extends StatelessWidget {
  final int id;
  final String desciption;
  final String price;
  final String location;
  final List<String> allphotos = [
    'assets/images/11.png',
    'assets/images/iphone.png',
    'assets/images/keyboard.png',
    'assets/images/mac.png',
    'assets/images/mouse.png',
    'assets/images/watch.png',
    'assets/images/zaryad.png'
  ];

  Listviewitem({
    required this.desciption,
    required this.id,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.all(10),
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(allphotos[id]),
              ),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Container(
                alignment: Alignment.center,
                width: 40,
                height: 30,
                color: Colors.blueAccent,
                child: Text('ТОП'),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  desciption,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                SizedBox(height: 5),
                Text(
                  '$price сум',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 5),
                Text(
                  location,
                  style: TextStyle(
                      color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}
