import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:olx/gallerywidgets.dart';
import 'package:olx/gridviewitem.dart';
import 'package:olx/listviewwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> lstview = [
    Listviewitem(
      desciption: 'Iphone 11,64 gb, Yashil',
      id: 0,
      location: 'Tashkent,Uzbekistan',
      price: '3000000',
    ),
    Listviewitem(
      desciption: 'Iphone 11 pro max,64 gb,qora',
      id: 1,
      location: 'Tashkent,Uzbekistan',
      price: '5000000',
    ),
    Listviewitem(
      desciption: 'Apple magic keyboard',
      id: 2,
      location: 'Ferghana,Uzbekistan',
      price: '2700000',
    ),
    Listviewitem(
      desciption: 'Macbook M1',
      id: 3,
      location: 'Ferghana,Uzbekistan',
      price: '8999999',
    ),
    Listviewitem(
      desciption: 'Magic mouse',
      id: 4,
      location: 'Buxoro,Uzbekistan',
      price: '777777',
    ),
    Listviewitem(
      desciption: 'Apple watch 7',
      id: 5,
      location: 'Tashkent,Uzbekistan',
      price: '3333333',
    ),
    Listviewitem(
      desciption: 'Macbook zaryachik',
      id: 6,
      location: 'Tashkent,Uzbekistan',
      price: '1450000',
    ),
  ];

  final List<Widget> griditem = [
    Gridviewitem(
      desciption: 'Iphone 11,64 gb, Yashil',
      id: 0,
      location: 'Tashkent,Uzbekistan',
      price: '3000000',
    ),
    Gridviewitem(
      desciption: 'Iphone 11 pro max,64 gb,qora',
      id: 1,
      location: 'Tashkent,Uzbekistan',
      price: '5000000',
    ),
    Gridviewitem(
      desciption: 'Apple magic keyboard',
      id: 2,
      location: 'Ferghana,Uzbekistan',
      price: '2700000',
    ),
    Gridviewitem(
      desciption: 'Macbook M1',
      id: 3,
      location: 'Ferghana,Uzbekistan',
      price: '8999999',
    ),
    Gridviewitem(
      desciption: 'Magic mouse',
      id: 4,
      location: 'Buxoro,Uzbekistan',
      price: '777777',
    ),
    Gridviewitem(
      desciption: 'Apple watch 7',
      id: 5,
      location: 'Tashkent,Uzbekistan',
      price: '3333333',
    ),
    Gridviewitem(
      desciption: 'Macbook zaryachik',
      id: 6,
      location: 'Tashkent,Uzbekistan',
      price: '1450000',
    ),
  ];

  final List<Widget> galleritem = [
    Galerywidgets(
      desciption: 'Iphone 11,64 gb, Yashil',
      id: 0,
      location: 'Tashkent,Uzbekistan',
      price: '3000000',
    ),
    Galerywidgets(
      desciption: 'Iphone 11 pro max,64 gb,qora',
      id: 1,
      location: 'Tashkent,Uzbekistan',
      price: '5000000',
    ),
    Galerywidgets(
      desciption: 'Apple magic keyboard',
      id: 2,
      location: 'Ferghana,Uzbekistan',
      price: '2700000',
    ),
    Galerywidgets(
      desciption: 'Macbook M1',
      id: 3,
      location: 'Ferghana,Uzbekistan',
      price: '8999999',
    ),
    Galerywidgets(
      desciption: 'Magic mouse',
      id: 4,
      location: 'Buxoro,Uzbekistan',
      price: '777777',
    ),
    Galerywidgets(
      desciption: 'Apple watch 7',
      id: 5,
      location: 'Tashkent,Uzbekistan',
      price: '3333333',
    ),
    Galerywidgets(
      desciption: 'Macbook zaryachik',
      id: 6,
      location: 'Tashkent,Uzbekistan',
      price: '1450000',
    ),
  ];

  // For filtered items
  List<Widget> filteredListViewItems = [];
  List<Widget> filteredGridViewItems = [];
  List<Widget> filteredGalleryItems = [];

  int choice = 1;

  final formkey = GlobalKey<FormState>();
  final searchcontroller = TextEditingController();

  void searchchech() {
    Map<String, int> describes = {
      'Iphone 11,64 gb, Yashil': 0,
      'Iphone 11 pro max,64 gb,qora': 1,
      'Apple magic keyboard': 2,
      'Macbook M1': 3,
      'Magic mouse': 4,
      'Apple watch 7': 5,
      'Macbook zaryachik': 6,
    };

    List<int> idies = [];
    List<String> smth = [];

    describes.forEach((key, value) {
      if (key.toLowerCase().contains(searchcontroller.text.toLowerCase())) {
        smth.add(key);
        idies.add(value);
      }
    });

    print(idies);
    print(smth);

    filteredGalleryItems = idies.map((id) => galleritem[id]).toList();
    filteredListViewItems = idies.map((id) => lstview[id]).toList();
    filteredGridViewItems = idies.map((id) => griditem[id]).toList();

    setState(() {});
  }

  Widget choices() {
    switch (choice) {
      case 1:
        return Column(
          children: filteredGalleryItems.isNotEmpty
              ? filteredGalleryItems
              : galleritem,
        );
      case 2:
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => filteredListViewItems.isNotEmpty
              ? filteredListViewItems[index]
              : lstview[index],
          itemCount: filteredListViewItems.isNotEmpty
              ? filteredListViewItems.length
              : lstview.length,
        );
      case 3:
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => filteredGridViewItems.isNotEmpty
              ? filteredGridViewItems[index]
              : griditem[index],
          itemCount: filteredGridViewItems.isNotEmpty
              ? filteredGridViewItems.length
              : griditem.length,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: searchcontroller,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            searchchech();
                          },
                          icon: const Icon(Icons.search)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                Row(
                  children: [
                    const Text(
                      'Мы нашли больше 1000 объявлений',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.arrow_up_arrow_down),
                    ),
                    PopupMenuButton<int>(
                      position: PopupMenuPosition.under,
                      color: Colors.grey.shade500,
                      shadowColor: Colors.black,
                      onSelected: (value) {
                        setState(() {
                          choice = value;
                        });
                      },
                      itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: 1,
                          child: Text('Галерея'),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('Список'),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text('Плитка'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Реклама'),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/logo.jpg'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
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
                const SizedBox(height: 20),
                choices(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
