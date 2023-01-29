import 'package:fashion_hub/view/Cart_Page.dart';
import 'package:fashion_hub/view/Categories_Page.dart';
import 'package:fashion_hub/view/Favorite_Page.dart';
import 'package:fashion_hub/view/Home_page.dart';
import 'package:fashion_hub/view/Profile_Page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Map<String, dynamic>> item = [
    {
      "icon": Icons.home_outlined,
      "title": 'Home',
      "image": 'assets/images/home.png'
    },
    {
      "icon": Icons.grid_view,
      "title": 'Categories',
      "image": 'assets/images/menu (1).png'
    },
    {
      "icon": Icons.favorite_outline,
      "title": 'Favorite',
      "image": 'assets/images/healthcare.png'
    },
    {
      "icon": Icons.person_outline,
      "title": 'Profile',
      "image": 'assets/images/user (1).png'
    },
  ];
  List screen = [
    HomePage(),
    CategoriesPage(),
    FavoritePage(),
    ProfilePage(),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2,
                    )
                  ]),
              child: Row(
                children: List.generate(
                    4,
                    (index) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.065),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        select = index;
                                      });
                                    },
                                    child: Icon(item[index]['icon'],
                                        color: select == index
                                            ? Color(0xff2D6A4F)
                                            : Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              item[index]['title'],
                              style: TextStyle(
                                color: select == index
                                    ? Color(0xff2D6A4F)
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        )),
              ),
            ),
            Positioned(
              right: 0,
              top: -15,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ));
                  });
                },
                child: Container(
                  height: height * 0.055,
                  width: width * 0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff2D6A4F), Color(0xff95D5B2)]),
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(25)),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$199.89',
                            style: TextStyle(
                              fontSize: height * 0.015,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '2 items',
                            style: TextStyle(
                              fontSize: height * 0.015,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: screen[select],
    );
  }
}
