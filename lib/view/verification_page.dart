import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Bottombar.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: height * 0.2,
                ),
                Positioned(
                  top: -70,
                  left: -5,
                  child: Image.asset(
                    'assets/images/background.png',
                    height: 400,
                    width: 600,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 80,
                  child: Text(
                    "Verification\nCode",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Text(
                "Please enter code send to",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+91 90985 56895",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Phone Number",
                        style: TextStyle(
                            color: Color(0xff2D6A4F),
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.underline,
                outlineBorderRadius: 5,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),
            SizedBox(
              height: height * 0.35,
            ),
            CommonButton(
              text: "Continue",
              onpressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomBar(),
                      ));
                });
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            MaterialButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend Code",
                      style: TextStyle(
                          color: Color(0xff2D6A4F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
