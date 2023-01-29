import 'package:fashion_hub/Commonfield/CommonsearchBar.dart';
import 'package:fashion_hub/view/Categories_Page.dart';
import 'package:fashion_hub/view/Detail_Page.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> item = [
    {
      "image": 'assets/images/cloth.png',
      "text": 'Fashion Sale',
      "image1": 'assets/images/c1.png',
      "title": 'Women\'s \n Fashion',
      "photo": 'assets/images/fe11.png',
      "name": 'Style Womens\nTurtleneck Oversized...',
      "name1": '\$49',
      "name2": '\$99',
    },
    {
      "image": 'assets/images/f2.jpg',
      "text": 'Trading Fashion',
      "image1": 'assets/images/c2.png',
      "title": ' Men\'s\nFashion',
      "photo": 'assets/images/fe22.png',
      "name": 'Stylish Women Open\nFront Long Sleeve Ch...',
      "name1": '\$69.99',
      "name2": '',
    },
    {
      "image": 'assets/images/f3.jpg',
      "text": '50% Off Sale',
      "image1": 'assets/images/c3.png',
      "title": 'Phones',
      "photo": 'assets/images/fe11.png',
      "name": 'Style Womens\nTurtleneck Oversized...',
      "name1": '\$49',
      "name2": '\$99',
    },
    {
      "image": 'assets/images/f4.jpg',
      "text": 'Exchange Offer',
      "image1": 'assets/images/c4.png',
      "title": 'Computers',
      "photo": 'assets/images/fe22.png',
      "name": 'Stylish Women Open\nFront Long Sleeve Ch...',
      "name1": '\$69.99',
      "name2": '',
    },
  ];
  List<Map<String, dynamic>> drawer = [
    {"icon": Icons.home_outlined, "option": 'Home'},
    {"icon": Icons.grid_view, "option": 'Shop by Category'},
    {"icon": Icons.shopping_cart_outlined, "option": 'Your Orders'},
    {"icon": Icons.favorite_outline, "option": 'Your Wish List'},
    {"icon": Icons.share_outlined, "option": 'Share'},
    {"icon": Icons.privacy_tip_outlined, "option": 'Privacy Policy'},
    {"icon": Icons.logout, "option": 'Logout'},
  ];
  final pageview = PageController(initialPage: 0);
  final globakey = GlobalKey<ScaffoldState>();
  int select = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      key: globakey,
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff2D6A4F),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(height * 0.16),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.06,
                        ),
                        CircleAvatar(
                          radius: height * 0.032,
                          backgroundColor: Colors.green,
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          'Oleh Chabanov',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: height * 0.02,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '+91 123 456 7890',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: height * 0.013,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 18,
                  child: Container(
                    height: height * 0.045,
                    width: height * 0.045,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(2, 2),
                        )
                      ],
                      color: Color(0xffFFFFFF),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit_outlined,
                      color: Color(0xff2D6A4F),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: List.generate(
                  7,
                  (index) => Container(
                        height: height * 0.06,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: height * 0.007,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Icon(
                              drawer[index]['icon'],
                              color: Color(0xff2D6A4F),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              drawer[index]['option'],
                              style: TextStyle(color: Color(0xff2D6A4F)),
                            ),
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.18,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2D6A4F),
                      Color(0xff95D5B2),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                globakey.currentState!.openDrawer();
                              });
                            },
                            child: Icon(
                              Icons.menu,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Fashion',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.03,
                                ),
                              ),
                              Text(
                                'Hub',
                                style: TextStyle(
                                  color: Color(0xffFFC107),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.03,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.notifications_active_outlined)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -23,
                left: 19,
                child: CommonSearchBar(),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height * 0.18,
                        width: double.infinity,
                        child: PageView(
                          controller: pageview,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          onPageChanged: (value) {
                            setState(() {
                              select = value;
                            });
                          },
                          children: List.generate(
                            4,
                            (index) => Stack(
                              children: [
                                Container(
                                  height: height * 0.18,
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.02),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        colorFilter: ColorFilter.mode(
                                            Colors.black38, BlendMode.darken),
                                        image: AssetImage(item[index]['image']),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  top: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item[index]['text'],
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: height * 0.03,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        'See More >',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: width * 0.2,
                          bottom: 10,
                          child: Row(
                            children: List.generate(
                                4,
                                (index) => Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.003),
                                      child: CircleAvatar(
                                          radius: height * 0.005,
                                          backgroundColor: select == index
                                              ? Color(0xff40916C)
                                              : Color(0xffB7E4C7)),
                                    )),
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Catalogue',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02,
                          ),
                        ),
                        Text(
                          'See All  >',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: height * 0.015,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.10,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 4,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: height * 0.10,
                                  width: width * 0.10,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.01),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        colorFilter: ColorFilter.mode(
                                            Colors.black38, BlendMode.darken),
                                        image: AssetImage(
                                          item[index]['image1'],
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Text(
                                    item[index]['title'],
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02,
                      vertical: height * 0.02,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Featured',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 2.8,
                    ),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (index == 1 || index == 3) {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailPage(),
                                          ));
                                    });
                                  }
                                },
                                child: Container(
                                  height: height * 0.2,
                                  width: width * 0.22,
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(item[index]['photo']),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 1,
                                          spreadRadius: 1,
                                          offset: Offset(2, 2))
                                    ],
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -10,
                                right: 18,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      select = index;
                                    });
                                  },
                                  child: Container(
                                      height: height * 0.035,
                                      width: height * 0.035,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(2, 2),
                                            )
                                          ]),
                                      child: FavoutiteButtonWidget()),
                                ),
                              ),
                              index == 0
                                  ? Positioned(
                                      left: 10,
                                      child: Container(
                                        height: height * 0.025,
                                        width: width * 0.04,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.horizontal(
                                              right: Radius.circular(20),
                                            ),
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xffCE5840),
                                                Color(0xffECA232)
                                              ],
                                            )),
                                        child: Center(
                                          child: Text(
                                            '-50%',
                                            style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: height * 0.013,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Text(""),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.015,
                                vertical: height * 0.01),
                            child: Row(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: Color(0xffFFC107),
                                        size: height * 0.02,
                                      )),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.015),
                            child: Text(item[index]['name']),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.015,
                                vertical: height * 0.004),
                            child: Row(
                              children: [
                                Text(
                                  item[index]['name1'],
                                  style: TextStyle(
                                    color: index % 2 == 0
                                        ? Color(0xffCE4040)
                                        : Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  item[index]['name2'],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.013,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoutiteButtonWidget extends StatefulWidget {
  const FavoutiteButtonWidget({Key? key}) : super(key: key);

  @override
  State<FavoutiteButtonWidget> createState() => _FavoutiteButtonWidgetState();
}

class _FavoutiteButtonWidgetState extends State<FavoutiteButtonWidget> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
      child: isFavourite == true
          ? Icon(
              Icons.favorite,
              size: 20,
              color: Color(0xffE7B844),
            )
          : Center(
              child: Image.asset(
                'assets/images/heart.png',
                height: 15,
              ),
            ),
    );
  }
}
