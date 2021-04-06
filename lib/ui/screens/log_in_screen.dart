import 'package:flutter/material.dart';
import 'package:test_project/ui/widgets/custom_tab.dart';
import 'package:test_project/ui/widgets/custom_text_field.dart';
import 'package:test_project/ui/widgets/header.dart';
import 'package:test_project/ui/widgets/medium_button.dart';
import 'package:test_project/ui/widgets/text_builder.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    final globalSizeWidth = MediaQuery.of(context).size.width;
    final globalSizeHeight = MediaQuery.of(context).size.height;
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return SafeArea(
      child: Material(
        child: Container(
            child: Column(
          children: [
            Header(
              height: globalSizeHeight * 0.28,
              title: 'Create account',
            ),
            Container(
              height: globalSizeHeight * 0.06,
              color: Color(0xFFFF00CC),
              child: CustomTab(
                  firstTab: 'Sign Up',
                  secondTab: 'Log In',
                  functionForTabs: null),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MediumButton(
                      textColor: Colors.white,
                      internalPadding: globalSizeWidth * 0.1,
                      fontSize: 20,
                      text: 'Log in with Facebook',
                      function: () {},
                      buttonColor: Color(0xFF000000),
                      url: 'assets/images/icon_fb.png',
                    ),
                    MediumButton(
                      textColor: Colors.white,
                      internalPadding: globalSizeWidth * 0.1,
                      fontSize: 20,
                      text: 'Log in with Google',
                      function: () {},
                      buttonColor: Color(0xFF000000),
                      url: 'assets/images/icon_gmail.png',
                    ),
                    MediumButton(
                      textColor: Colors.white,
                      internalPadding: globalSizeWidth * 0.1,
                      fontSize: 20,
                      text: 'Log in with Instagram',
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
                        TextBuilder(text: 'Or', 
                        color: Color(0xFFEBEBEB),
                        textSize: 28),
                        Container(
                          height: 5,
                          width: globalSizeWidth * 0.3,
                          color: Color(0xFFEBEBEB),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: globalSizeWidth * 0.86,
                      child: CustomTextField(
                        hint: 'Email',
                        controller: _emailController,
                        obscure: false,
                        icon: Icon(
                          Icons.alternate_email,
                          color: Color(0xFFB5B5B5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: globalSizeWidth * 0.86,
                      child: CustomTextField(
                        hint: 'Password',
                        controller: _passwordController,
                        obscure: true,
                        icon: Icon(
                          Icons.lock,
                          color: Color(0xFFB5B5B5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: globalSizeWidth * 0.86,
                      child: RaisedButton(
                        onPressed: () {},
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: <Color>[
                                        Color(0xFFFFA450),
                                        Color(0xFFE16C00),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(80.0))),
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child:  TextBuilder(text: 'Log in', 
                        color: Color(0xFFEBEBEB),
                        textSize: 28),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
TextBuilder(text: 'Forgot your password? ', 
                        color: Colors.black,
                        textSize: 18),
TextBuilder(text: 'Click here', 
                        color: Color(0xFFE16C00),
                        textSize: 18),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}