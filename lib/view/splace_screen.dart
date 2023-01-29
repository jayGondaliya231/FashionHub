import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:fashion_hub/view/Mobileno_page.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({Key? key}) : super(key: key);

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  List<Map<String, dynamic>> item = [
    {
      "image": 'assets/images/Illus - 5.png',
      "title": 'Online Order',
      "title1": 'You can see the product with all angles,',
      "title2": 'true and convenient',
    },
    {
      "image": 'assets/images/Illus - 7.png',
      "title": 'Easy Payment',
      "title1": 'You just need to take a photo or upload and',
      "title2": 'we will find similar products for you.',
    },
    {
      "image": 'assets/images/fast_deli.png',
      "title": 'Fast Delivery',
      "title1": 'You just need to take a photo or upload and',
      "title2": 'we will find similar products for you.',
    },
  ];
  final pageview = PageController(initialPage: 0);
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.85,
                width: double.infinity,
                color: Colors.white,
                child: PageView.builder(
                  itemCount: 3,
                  controller: pageview,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      select = value;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.2,
                        ),
                        Image.asset(
                          item[index]['image'],
                          height: height * 0.25,
                        ),
                        SizedBox(
                          height: height * 0.09,
                        ),
                        Text(
                          item[index]['title'],
                          style: TextStyle(
                            fontSize: height * 0.027,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.035,
                        ),
                        Text(
                          item[index]['title1'],
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.017),
                        ),
                        Text(
                          item[index]['title2'],
                          style: TextStyle(
                              color: Colors.grey, fontSize: height * 0.017),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                select = index;
                              });
                            },
                            child: select == index
                                ? CircleAvatar(
                                    radius: height * 0.006,
                                    backgroundColor: Color(0xff1B4332),
                                  )
                                : CircleAvatar(
                                    radius: height * 0.003,
                                    backgroundColor: Color(0xff74C69D),
                                  ),
                          )),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          CommonButton(
            text: "Get Started!",
            onpressed: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MobileNoPage(),
                    ));
              });
            },
          ),
        ],
      ),
    );
  }
}
