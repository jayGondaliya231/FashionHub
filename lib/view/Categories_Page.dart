import 'package:fashion_hub/Commonfield/CommonsearchBar.dart';
import 'package:flutter/material.dart';

import 'Westernwear_Page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<Map<String, dynamic>> item = [
    {
      "image": 'assets/images/cat1.png',
      "title": 'WOMEN',
      "title1": 'Top & Tees, Kurtas & Suits...'
    },
    {
      "image": 'assets/images/cat2.png',
      "title": 'MEN',
      "title1": 'T-Shirts,Shirts,Jeans,Shoes...'
    },
    {
      "image": 'assets/images/cat3.png',
      "title": 'KIDS',
      "title1": 'Clothing, Footwear, Brands...'
    },
    {
      "image": 'assets/images/cat4.png',
      "title": 'HOME &\nKITCHEN',
      "title1": 'Sofa, Bedsheets, Cushion...'
    },
    {
      "image": 'assets/images/cat5.png',
      "title": 'BEAUTY',
      "title1": 'Makeup, Fragrances, Groom...'
    },
    {
      "image": 'assets/images/cat6.png',
      "title": 'GADGETS',
      "title1": 'Head phones, Mobile covers...'
    },
  ];
  int select = 0;
  List<String> option = [
    'Westernwear',
    'Ethnic & Fusionwear',
    'Footwear',
    'Lingerie',
    'Bags, Wallets & Cluthes',
    'Jewellery',
    'Other Accessories',
    'Beauty & Personal Care',
    'Sports & Activewear',
    'Luggage & Trolleys',
    'Sleepwear & Longewear',
    'Watches',
    'Winterwear Store',
    'Gift Card',
  ];
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
                height: height * 0.17,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2D6A4F),
                      Color(0xff40916C),
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
                          Text(
                            'Categories',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.02,
                            ),
                          ),
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
            height: height * 0.04,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  6,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    color: Color(0xffB7E4C7),
                    child: ExpansionTile(
                      title: Row(
                        children: [
                          Text(
                            item[index]['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 22,
                          )
                        ],
                      ),
                      subtitle: Text(
                        item[index]['title1'],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.013,
                        ),
                      ),
                      trailing: Image.asset(
                        item[index]['image'],
                        height: 150,
                        width: 150,
                      ),
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: List.generate(
                                14,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              index == 0
                                                  ? Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            WesternwearPage(),
                                                      ))
                                                  : null;
                                            },
                                            child: Text(
                                              option[index],
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
