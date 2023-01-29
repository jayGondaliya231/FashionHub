import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<String> price = [
    '\$49',
    '\$59',
    '\$69',
    '\$79',
    '\$69',
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.14,
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
                      SizedBox(
                        width: width * 0.13,
                      ),
                      Row(
                        children: [
                          Text(
                            'Favourite',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.017, vertical: height * 0.02),
            child: Row(
              children: [
                Text(
                  '5 Items',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.022,
                  ),
                ),
                Spacer(),
                Text(
                  'Sort By :',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: height * 0.014,
                  ),
                ),
                Text(
                  'Price : lowest to high',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.014,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                itemCount: 5,
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
                              price[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: index == 0
                                    ? Color(0xffCE4040)
                                    : Color(0xff000000),
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
