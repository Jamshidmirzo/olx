import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/gallerywidgets.dart';
import 'package:olx/listviewwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> lstview = [
    Listviewitem(
        desciption: 'Iphone 11,64 gb, Yashil',
        id: 0,
        location: 'Tashkent,Uzbekistan',
        price: '3000000'),
    Listviewitem(
        desciption: 'Iphone 11 pro max,64 gb,qora',
        id: 1,
        location: 'Tashkent,Uzbekistan',
        price: '5000000'),
    Listviewitem(
        desciption: 'Apple magic keyboard',
        id: 2,
        location: 'Ferghana,Uzbekistan',
        price: '2700000'),
    Listviewitem(
        desciption: 'Macbook M1',
        id: 3,
        location: 'Ferghana,Uzbekistan',
        price: '8999999'),
    Listviewitem(
        desciption: 'Magic mouse',
        id: 4,
        location: 'Buxoro,Uzbekistan',
        price: '777777'),
    Listviewitem(
        desciption: 'Apple watch 7',
        id: 5,
        location: 'Tashkent,Uzbekistan',
        price: '3333333'),
    Listviewitem(
        desciption: 'Macbook zaryachik',
        id: 6,
        location: 'Tashkent,Uzbekistan',
        price: '1450000'),
  ];

  List<Widget> galleritem = [
    Galerywidgets(
        desciption: 'Iphone 11,64 gb, Yashil',
        id: 0,
        location: 'Tashkent,Uzbekistan',
        price: '3000000'),
    Galerywidgets(
        desciption: 'Iphone 11 pro max,64 gb,qora',
        id: 1,
        location: 'Tashkent,Uzbekistan',
        price: '5000000'),
    Galerywidgets(
        desciption: 'Apple magic keyboard',
        id: 2,
        location: 'Ferghana,Uzbekistan',
        price: '2700000'),
    Galerywidgets(
        desciption: 'Macbook M1',
        id: 3,
        location: 'Ferghana,Uzbekistan',
        price: '8999999'),
    Galerywidgets(
        desciption: 'Magic mouse',
        id: 4,
        location: 'Buxoro,Uzbekistan',
        price: '777777'),
    Galerywidgets(
        desciption: 'Apple watch 7',
        id: 5,
        location: 'Tashkent,Uzbekistan',
        price: '3333333'),
    Galerywidgets(
        desciption: 'Macbook zaryachik',
        id: 6,
        location: 'Tashkent,Uzbekistan',
        price: '1450000'),
  ];
  int choice = 1;

  choices() {
    if (choice == 1) {
      return Column(
        children: [...galleritem],
      );
    } else if (choice == 2) {
      return Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Column(
                children: [...lstview],
              )
            ],
          )

          // ListView.separated(
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) {
          //       return lstview[index];
          //     },
          //     separatorBuilder: (context, index) {
          //       return const SizedBox(
          //         height: 20,
          //       );
          //     },
          //     itemCount: lstview.length),
        ],
      );
    } else {
      return const Text('data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const Text(
                  'Мы нашли больше 1000 объявлений',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.arrow_up_arrow_down),
                ),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  color: Colors.grey.shade500,
                  shadowColor: Colors.black,
                  onSelected: (value) {
                    choice = value;
                    print(value);
                    setState(() {});
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Галерея'),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('Список'),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text('Плитка'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Реклама'),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.jpg'))),
                  ),
                  const Text(
                    '@ayti_jobs',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            choices(),
          ]),
        ),
      ),
    );
  }
}
