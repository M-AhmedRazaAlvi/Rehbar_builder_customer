import 'package:flutter/material.dart';
import 'package:rehber_builders/Tabviews/landingScreen.dart';
import 'package:rehber_builders/auth/signupScreen.dart';
import 'package:rehber_builders/utils/images.dart';
import 'package:rehber_builders/widgets/Accounts/accountsTextBox.dart';
import 'package:rehber_builders/widgets/Accounts/socialButtons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  // height: size.height * 0.4,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Images.BGSignIn),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 50, left: 45),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wellcome to\n\t',
                          style: TextStyle(
                              fontFamily: 'Poppins-Thin',
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontSize: 16),
                        ),
                        Text('Building\nRehber',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 34.0,
                                fontFamily: 'Poppins-Bold',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        Text('Log In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontFamily: 'Poppins-Bold',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      children: [
                        /////// text field email///////
                        TextBoxAccounts(
                            boxName: 'Email', boxHint: 'Enter Email'),
                        SizedBox(
                          height: size.height * 0.002,
                        ),
                        /////// text field password///////
                        TextBoxAccounts(
                          boxName: 'Password',
                          boxHint: 'Enter Password',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility_off,
                              size: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forgot Password?',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ))),
                        SizedBox(
                          height: size.height * 0.025,
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LandingPage()));
                          },
                          child: Container(
                            height: size.height * 0.06,
                            decoration: BoxDecoration(
                              color: Color(0xff18558E),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text('Sign in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                                color: Color(0xff6B6B6B), fontSize: 14),
                          ),
                        ),

                        SocialButtons(size: size),

                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupScreen()));
                            },
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'Dont have an account?\t\t',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1877F2),
                                  )),
                            ])),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
