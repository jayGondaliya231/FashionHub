import 'package:flutter/material.dart';

class CommonSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.065,
      width: width * 0.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 1,
              blurRadius: 2,
              offset: (Offset(0, 5)),
            )
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade400,
              ),
              border: InputBorder.none,
              hintText: "What are you looking for?",
              hintStyle: TextStyle(color: Colors.grey.shade400)),
        ),
      ),
    );
  }
}
