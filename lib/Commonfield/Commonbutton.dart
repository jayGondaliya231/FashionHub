import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final text;
  final onpressed;

  const CommonButton({Key? key, this.text, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onpressed,
      child: Container(
        height: height * 0.07,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: width * 0.01),
        decoration: BoxDecoration(
          color: Color(0xff95D5B2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: height * 0.02,
          ),
        )),
      ),
    );
  }
}
