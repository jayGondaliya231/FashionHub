import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:fashion_hub/view/Check_Out.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int counter = 0;
  int counter1 = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        height: height * 0.16,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 2,
                spreadRadius: 4,
              )
            ]),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02, vertical: height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Price'),
                  Text('\$239.98'),
                ],
              ),
            ),
            Container(
              height: height * 0.055,
              child: CommonButton(
                text: "Check Out",
                onpressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckOutPage(),
                        ));
                  });
                },
              ),
            ),
          ],
        ),
      ),
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
                            'Cart',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.delete_outline_rounded),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: height * 0.28,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(1, 3),
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.018,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/fe22.png',
                      height: height * 0.1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Astylish Women Open Front\nLong Sleeve Chunky Knit\nCardigan',
                          style: TextStyle(
                            fontSize: height * 0.015,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '\$69.99',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              counter1++;
                            });
                          },
                          child: Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              size: height * 0.02,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('$counter1'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (counter1 > 0) {
                              setState(() {
                                counter1--;
                              });
                            }
                          },
                          child: Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.remove,
                              size: height * 0.02,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/fe22.png',
                      height: height * 0.1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Astylish Women Open Front\nLong Sleeve Chunky Knit\nCardigan',
                          style: TextStyle(
                            fontSize: height * 0.015,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '\$69.99',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              size: height * 0.02,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('$counter'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (counter > 0) {
                              setState(() {
                                counter--;
                              });
                            }
                          },
                          child: Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.remove,
                              size: height * 0.02,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
