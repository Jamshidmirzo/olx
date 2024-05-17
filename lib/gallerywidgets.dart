import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Galerywidgets extends StatelessWidget {
  int id;
  String desciption;
  String price;
  String location;
  Galerywidgets(
      {required this.desciption,
      required this.id,
      required this.location,
      required this.price});
  List allphotos = [
    'assets/images/11.png',
    'assets/images/iphone.png',
    'assets/images/keyboard.png',
    'assets/images/mac.png',
    'assets/images/mouse.png',
    'assets/images/watch.png',
    'assets/images/zaryad.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey.shade500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(allphotos[id]),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 30,
                  color: Colors.blueAccent,
                  child: Text('ТОП'),
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          desciption,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade400),
                      alignment: Alignment.center,
                      child: Text('Новый'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$price сум',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
