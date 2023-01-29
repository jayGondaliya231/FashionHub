import 'package:country_code_picker/country_code_picker.dart';
import 'package:fashion_hub/Commonfield/Commonbutton.dart';
import 'package:fashion_hub/view/Home_page.dart';
import 'package:fashion_hub/view/verification_page.dart';
import 'package:flutter/material.dart';

class MobileNoPage extends StatefulWidget {
  MobileNoPage({Key? key}) : super(key: key);

  @override
  State<MobileNoPage> createState() => _MobileNoPageState();
}

class _MobileNoPageState extends State<MobileNoPage> {
  final mobileno = TextEditingController();
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: -15,
                    child: Image.asset(
                      'assets/images/background.png',
                      height: 300,
                      width: 600,
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    left: width * 0.04,
                    child: Text(
                      'What is Your Phone \nNumber?',
                      style: TextStyle(
                        fontSize: height * 0.03,
                        color: Color(0xffFFFFFF),
                        height: height * 0.0015,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: height * 0.0,
                    left: width * 0.04,
                    child: Text(
                      'Please enter your phone number to\nverify your account',
                      style: TextStyle(
                        fontSize: height * 0.018,
                        height: height * 0.0015,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Container(
                  height: height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      CountryCodePicker(
                        onChanged: print,
                        padding: EdgeInsets.zero,
                        initialSelection: 'IT',
                        favorite: ['+39', 'FR'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      VerticalDivider(
                        width: 0,
                        thickness: 2,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Moblie No. can not be empty!!";
                            } else if (value.length < 10) {
                              return "Invalid Mobie Number!!!";
                            }
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                              hintText: "Enter your Mobile No.",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.35,
              ),
              CommonButton(
                text: "Send Verification Code",
                onpressed: () {
                  if (form.currentState!.validate()) {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpPage()));
                    });
                  }
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  });
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xff40916C),
                    fontSize: height * 0.025,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
