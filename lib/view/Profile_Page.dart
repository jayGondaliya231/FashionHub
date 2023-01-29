import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map<String, dynamic>> item = [
    {"image": 'assets/images/p1.png', "title": 'Shipping Addresses'},
    {"image": 'assets/images/p2.png', "title": 'Payments Methods'},
    {"image": 'assets/images/p3.png', "title": 'Orders'},
    {"image": 'assets/images/heart.png', "title": 'Favorite'},
    {"image": 'assets/images/p5.png', "title": 'Settings'},
    {"image": 'assets/images/p6.png', "title": 'Log Out'},
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff2D6A4F), Color(0xff95D5B2)]),
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
                        height: height * 0.1,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: height * 0.032,
                            backgroundColor: Colors.green,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Oleh Chabanov',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              Text(
                                '+91 123 456 7890',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFFFFFF),
                                  fontSize: height * 0.013,
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
          SizedBox(
            height: height * 0.02,
          ),
          Column(
            children: List.generate(
                6,
                (index) => Container(
                      height: height * 0.065,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: width * 0.03,
                        vertical: height * 0.012,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(2, 2),
                            ),
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Image.asset(
                            item[index]['image'],
                            height: height * 0.023,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            item[index]['title'],
                            style: TextStyle(
                              color: Color(0xff40916C),
                            ),
                          ),
                        ],
                      ),
                    )),
          ),
          SizedBox(
            height: height * 0.12,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.03),
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
