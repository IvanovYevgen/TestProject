import 'package:flutter/material.dart';
import 'package:test_project/ui/screens/log_in_screen.dart';
import 'package:test_project/ui/widgets/custom_tab.dart';
import 'package:test_project/ui/widgets/custom_text_field.dart';
import 'package:test_project/ui/widgets/header.dart';
import 'package:test_project/ui/widgets/medium_button.dart';
import 'package:test_project/ui/widgets/text_builder.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final globalSizeWidth = MediaQuery.of(context).size.width;
    final globalSizeHeight = MediaQuery.of(context).size.height;
    TextEditingController _emailController = TextEditingController();
    return SafeArea(
      child: Material(
        child: Container(
            child: Column(
          children: [
            Header(
              height: globalSizeHeight * 0.3,
              title: 'See you there',
            ),
            Container(
              height: globalSizeHeight * 0.06,
              color: Color(0xFFFF00CC),
              child: CustomTab(
                firstTab: 'Sign Up',
                colorOfFirstTabTextColor: Colors.white,
                secondTab: 'Log In',
                colorOfSecondTabTextColor: Color(0xFFFF99FF),
                functionForTabs: (tab) {
                  if (tab == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInScreen()),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              width: globalSizeWidth * 0.86,
              height: globalSizeHeight * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MediumButton(
                    textColor: Colors.white,
                    internalPadding: globalSizeWidth * 0.1,
                    fontSize: 20,
                    text: 'Sign up with Facebook',
                    function: () {},
                    buttonColor: Color(0xFF000000),
                    url: 'assets/images/icon_fb.png',
                  ),
                  MediumButton(
                    textColor: Colors.white,
                    internalPadding: globalSizeWidth * 0.1,
                    fontSize: 20,
                    text: 'Sign up with Google',
                    function: () {},
                    buttonColor: Color(0xFF000000),
                    url: 'assets/images/icon_gmail.png',
                  ),
                  MediumButton(
                    textColor: Colors.white,
                    internalPadding: globalSizeWidth * 0.1,
                    fontSize: 20,
                    text: 'Sign up with Instagram',
                    function: () {},
                    buttonColor: Color(0xFF000000),
                    url: 'assets/images/icon_insta.png',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 5,
                        width: globalSizeWidth * 0.3,
                        color: Color(0xFFEBEBEB),
                      ),
                      TextBuilder(
                          text: 'Or', color: Color(0xFFEBEBEB), textSize: 28),
                      Container(
                        height: 5,
                        width: globalSizeWidth * 0.3,
                        color: Color(0xFFEBEBEB),
                      ),
                    ],
                  ),
                  CustomTextField(
                    textAlign: TextAlign.center,
                    textFieldColor: Color(0xFFB6B6B6),
                    textColor: Colors.white,
                    hint: 'Sing up with email',
                    controller: _emailController,
                    obscure: false,
                    icon: Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextBuilder(
                              text: 'Already have an account? ',
                              color: Colors.black,
                              textSize: 18),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextBuilder(
                              text: 'Click here',
                              color: Color(0xFFE16C00),
                              textSize: 18),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
