import 'package:fashion_hub/Commonfield/CommonsearchBar.dart';
import 'package:fashion_hub/view/Filter_Page.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class WesternwearPage extends StatefulWidget {
  const WesternwearPage({Key? key}) : super(key: key);

  @override
  State<WesternwearPage> createState() => _WesternwearPageState();
}

class _WesternwearPageState extends State<WesternwearPage> {
  List<String> title = ['All', 'Dresses', 'Tops', 'Sweater', 'Jeans'];
  int selected = 0;
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
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
                        height: height * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Westernwear',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.025,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FilterPage(),
                                      ));
                                });
                              },
                              icon: Icon(Icons.tune))
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
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.01,
            ),
            child: Container(
              height: height * 0.05,
              width: double.infinity,
              color: Colors.transparent,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                          margin: EdgeInsets.symmetric(
                              horizontal: width * 0.009,
                              vertical: height * 0.005),
                          decoration: BoxDecoration(
                              boxShadow: selected == index
                                  ? null
                                  : [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                              color: selected == index
                                  ? Color(0xff95D5B2)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            title[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selected == index
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          )),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.02,
              ),
              Text(
                '108 Items',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.022,
                ),
              ),
              Spacer(),
              Text(
                'Sort by : ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: height * 0.015,
                ),
              ),
              Text(
                'Featured',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_down_sharp),
              SizedBox(
                width: width * 0.01,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                itemCount: 6,
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
                          Container(
                            height: height * 0.2,
                            width: width * 0.22,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/fe11.png'),
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
                                child: FavoutiteButtonWidget(),
                              ),
                            ),
                          ),
                          index == 0
                              ? Positioned(
                                  top: 15,
                                  left: 10,
                                  child: Container(
                                    height: height * 0.025,
                                    width: width * 0.04,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(
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
                            horizontal: width * 0.015, vertical: height * 0.01),
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
                        child: Text('Style Womens\nTurtleneck Oversized... '),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.015,
                            vertical: height * 0.004),
                        child: Row(
                          children: [
                            Text(
                              '\$49',
                              style: TextStyle(
                                color: Color(0xffCE4040),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              '\$99',
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
