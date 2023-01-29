import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:fashion_hub/view/Cart_Page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> size = [
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];
  List<String> price = [
    '\$69',
    '\$79',
    '\$89',
    '\$75',
  ];
  final pageview = PageController(initialPage: 0);
  int select = 0;
  int selected = 0;
  int count = 0;
  int like = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.5,
              width: double.infinity,
              color: Colors.white,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                controller: pageview,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    select = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Image.asset(
                      'assets/images/detail.png',
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.003),
                  child: select == index
                      ? CircleAvatar(
                          radius: height * 0.004,
                          backgroundColor: Color(0xff2D6A4F),
                        )
                      : CircleAvatar(
                          radius: height * 0.0035,
                          backgroundColor: Color(0xff95D5B2),
                        ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: Row(
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        size: height * 0.018,
                        color: Color(0xffFFC107),
                      ),
                    ),
                  ),
                  Text(
                    ' 8 reviews',
                    style:
                        TextStyle(color: Colors.grey, fontSize: height * 0.014),
                  ),
                  Spacer(),
                  Text(
                    'In Stock',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.015,
                      color: Color(0xff95D5B2),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.015, vertical: height * 0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Astylish Women Open Front Long\nSleeve Chunky Knit Cardigan',
                    style: TextStyle(
                      height: height * 0.0015,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text(
                    '\$69.99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.018,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Colors',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: List.generate(
                        6,
                        (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.05,
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/fe22.png'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10),
                                  border: selected == index
                                      ? Border.all(
                                          color: Color(0xffE7B844),
                                          width: 1,
                                        )
                                      : null,
                                  boxShadow: selected == index
                                      ? null
                                      : [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            blurRadius: 1,
                                            spreadRadius: 1,
                                          )
                                        ],
                                ),
                              ),
                            )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    'Colors',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: List.generate(
                      6,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            count = index;
                          });
                        },
                        child: Container(
                          height: height * 0.044,
                          width: height * 0.044,
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.013),
                          decoration: BoxDecoration(
                              color: count == index
                                  ? Color(0xff95D5B2)
                                  : Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: count == index
                                  ? null
                                  : [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 2,
                                        spreadRadius: 2,
                                      )
                                    ]),
                          child: Center(
                            child: Text(size[index]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Product Details',
                    style: TextStyle(
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    'Women\'s Casual V-Neck Pullover Sweater long\nSleeved Sweater Top with high low Hemline is going to be \nthe newest step in your wardrobe! Living up to its \nnamesake, this sweater is unbelievably soft, ...',
                    style: TextStyle(
                      height: height * 0.0017,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                ],
              ),
            ),
            Center(child: Icon(Icons.keyboard_arrow_down_sharp)),
            Divider(
              color: Colors.grey.shade200,
              thickness: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.018),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.022,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'See All ',
                            style: TextStyle(
                              color: Color(0xff707070),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: height * 0.02,
                            color: Color(0xff707070),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.015),
                  Text('Dipika Patel'),
                  SizedBox(height: height * 0.01),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            size: height * 0.018,
                            color: Color(0xffFFC107),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'June 1, 2020',
                        style: TextStyle(
                          color: Color(0xff707070),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.015),
                  Text(
                    'Soft and comfortable material, fitting is very nice, length is \nbetween a crop and normal sweatshirt.\nperfect sweatshirt also the colour is very classy and most \nimp it is same as shown in the picture.',
                    style: TextStyle(
                      height: height * 0.0018,
                      fontSize: height * 0.016,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Column(
                children: [
                  Text(
                    'View Similar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.022,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.35,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: height * 0.23,
                            width: width * 0.2,
                            margin: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
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
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            right: 18,
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
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xffE7B844),
                                size: height * 0.025,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.015),
                        child: Row(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: Color(0xffFFC107),
                                    size: height * 0.015,
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
            Row(
              children: [
                SizedBox(
                  width: width * 0.03,
                ),
                Icon(
                  Icons.arrow_back_outlined,
                  size: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Container(
                  height: height * 0.05,
                  width: width * 0.23,
                  child: CommonButton(
                    text: "Add to Cart",
                    onpressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartPage(),
                            ));
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: width * 0.045,
                ),
                Image.asset(
                  'assets/images/heart.png',
                  height: height * 0.025,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
