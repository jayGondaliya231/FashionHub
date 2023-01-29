import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String? dropdownvalue;
  String? dropdownvalue1;
  String? dropdownvalue2;

  List<String> dropDownItems = [
    "Dresses",
    "Jeans",
    "Trouser",
    "Jacket",
    "Top",
  ];

  List<String> dropDownItems1 = [
    "Lark & Ro, Astylish, ECOWISH, Angashion",
    "Rolex",
    "Nike",
    "Adidas",
    "Zara",
  ];

  List<String> dropDownItems2 = [
    "Relevance",
    "Popularity",
    "price--Low to High",
    "Price--High to Low",
    "Newest First",
  ];
  List<Color> color = [
    Color(0xff000000),
    Color(0xffCE3E3E),
    Color(0xff76B55A),
    Color(0xff5D71E1),
    Color(0xffB868B9),
    Color(0xffE3D224),
    Color(0xff21CECE),
  ];
  List<String> size = [
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];
  double start = 0;
  double end = 5000;
  int select = 0;
  int selected = 0;
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
                            'Filter',
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
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Text('Price'),
            ],
          ),
          SliderTheme(
              data: SliderThemeData(
                activeTickMarkColor: Color(0xffE7B844),
                inactiveTrackColor: Colors.grey.shade300,
                thumbColor: Color(0xffFFFFFF),
                activeTrackColor: Color(0xffE7B844),
                //overlayColor: Colors.red,
                trackHeight: 3,
              ),
              child: RangeSlider(
                divisions: 5000,
                values: RangeValues(start, end),
                min: 0,
                max: 5000,
                onChanged: (RangeValues value) {
                  setState(() {
                    start = value.start;
                    end = value.end;
                  });
                },
              )),
          Container(
            height: height * 0.06,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: width * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${start.toStringAsFixed(0)}'),
                VerticalDivider(
                  thickness: 1,
                ),
                Text('${end.toStringAsFixed(0)}'),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Text('Categories'),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.06,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: width * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                )),
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: height * 0.02,
                color: Colors.black,
              ),
              hint: Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text('None'),
                  SizedBox(
                    width: width * 0.3,
                  ),
                ],
              ),
              value: dropdownvalue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue;
                });
              },
              underline: Container(),
              items: dropDownItems.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(item),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Text('Brand'),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.06,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: width * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                )),
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: height * 0.02,
                color: Colors.black,
              ),
              hint: Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text('None'),
                  SizedBox(
                    width: width * 0.3,
                  ),
                ],
              ),
              value: dropdownvalue1,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue1 = newValue;
                });
              },
              underline: Container(),
              items: dropDownItems1.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(item),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Text('Colors'),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: List.generate(
              7,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    select = index;
                  });
                },
                child: Container(
                  height: height * 0.044,
                  width: height * 0.044,
                  margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    shape: BoxShape.circle,
                    border: select == index
                        ? Border.all(
                            color: Color(0xffE7B844),
                            width: 1.5,
                          )
                        : null,
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: height * 0.017,
                      backgroundColor: color[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Text('Sizes'),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.02),
            child: Row(
              children: List.generate(
                6,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    height: height * 0.044,
                    width: height * 0.044,
                    margin: EdgeInsets.symmetric(horizontal: width * 0.013),
                    decoration: BoxDecoration(
                        color: selected == index
                            ? Color(0xff95D5B2)
                            : Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: selected == index
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.03,
              ),
              Text('Sorted by'),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.06,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: width * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                )),
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: height * 0.02,
                color: Colors.black,
              ),
              hint: Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text('None'),
                  SizedBox(
                    width: width * 0.3,
                  ),
                ],
              ),
              value: dropdownvalue2,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue2 = newValue;
                });
              },
              underline: Container(),
              items: dropDownItems2.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(item),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            height: height * 0.05,
            child: CommonButton(
              onpressed: () {},
              text: "Results(186)",
            ),
          ),
        ],
      ),
    );
  }
}
