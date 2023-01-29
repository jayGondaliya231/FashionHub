import 'dart:async';

import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:fashion_hub/view/Cart_Page.dart';
import 'package:fashion_hub/view/Home_page.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  List<Map<String, dynamic>> item = [
    {"image": 'assets/images/dhl-icon-21197.png', "price": '\$15'},
    {"image": 'assets/images/FedEx_Logo.png', "price": '\$20'},
    {"image": 'assets/images/Blue_Dart_logo_transparent.png', "price": '\$18'},
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        height: h * 0.2,
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
                  horizontal: w * 0.02, vertical: h * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'items',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: h * 0.015,
                        ),
                      ),
                      Text(
                        '\$199.99',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: h * 0.015,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: h * 0.015,
                        ),
                      ),
                      Text(
                        '\$20',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: h * 0.015,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Price'),
                      Text('\$219.98'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.055,
              child: CommonButton(
                text: "Pay",
                onpressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DialogBoxClass(),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: h * 0.14,
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
              padding: EdgeInsets.symmetric(horizontal: w * 0.02),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.07,
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
                        width: w * 0.13,
                      ),
                      Row(
                        children: [
                          Text(
                            'Check Out',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.025,
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
            padding: EdgeInsets.symmetric(horizontal: w * 0.02),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.01,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/p1.png',
                      height: h * 0.025,
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Text(
                      'Shipping Address',
                      style: TextStyle(
                        fontSize: h * 0.02,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Container(
                  height: h * 0.1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 4),
                        ),
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Oleh Chabanov',
                            ),
                            Row(
                              children: [
                                Text(
                                  'Change',
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: h * 0.015,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: w * 0.015,
                          ),
                          Text(
                            '225, Highland Area,\nSpringfield, Il 62704, USA',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: h * 0.015,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/fast.png',
                      height: h * 0.015,
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Text(
                      'Delivery Method',
                      style: TextStyle(
                        fontSize: h * 0.02,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  children: List.generate(
                    3,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          select = index;
                        });
                      },
                      child: Container(
                        height: h * 0.1,
                        width: w * 0.1,
                        margin: EdgeInsets.symmetric(horizontal: w * 0.016),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: select == index
                                ? Border.all(
                                    color: Color(0xffE7B844),
                                    width: 1,
                                  )
                                : null,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(2, 2),
                              ),
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Image.asset(
                              item[index]['image'],
                              height: h * 0.025,
                            ),
                            SizedBox(
                              height: h * 0.017,
                            ),
                            Text(
                              item[index]['price'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.006,
                            ),
                            Text(
                              '1-2 days',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: h * 0.012),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/p2.png',
                      height: h * 0.02,
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: h * 0.02,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Container(
                  height: h * 0.09,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 4),
                        ),
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: w * 0.013,
                          vertical: h * 0.02,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/58482354cef1014c0b5e49c0.png',
                              height: h * 0.05,
                            ),
                            Text(
                              '    **** **** **** **45',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: h * 0.015,
                              ),
                            ),
                            Spacer(),
                            Text('Change'),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: h * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DialogBoxClass extends StatefulWidget {
  const DialogBoxClass({Key? key}) : super(key: key);

  @override
  State<DialogBoxClass> createState() => _DialogBoxClassState();
}

class _DialogBoxClassState extends State<DialogBoxClass> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.43,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/D1.png',
                height: h * 0.14,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 22,
                child: Image.asset(
                  'assets/images/D2.png',
                  height: h * 0.06,
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            'Success',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: h * 0.03,
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            '     Your order will be delivered soon.\nIt can be tracked in the "Orders" section.',
            style: TextStyle(
              color: Colors.grey,
              height: h * 0.0017,
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Container(
            height: h * 0.05,
            width: w * 0.35,
            child: CommonButton(
              text: "Continue Shopping",
              onpressed: () {
                setState(() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                });
              },
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                    ));
              });
            },
            child: Text(
              'Go to Orders',
              style: TextStyle(
                color: Color(0xff40916C),
                fontSize: h * 0.02,
              ),
            ),
          )
        ],
      ),
    );
  }
}
