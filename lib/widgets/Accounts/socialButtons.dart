import 'package:flutter/material.dart';
import 'package:rehber_builders/utils/icon_images.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Row(
          
          children: [
            SizedBox(
              width: size.width * 0.05,
            ),
            Image.asset(IconImages.google,
            height: 23,
            width: 23,
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black87, width: 10))),
                child: Text(
                  'Continue with google',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'assets/font/Poppins-Thin.ttf'),
                ))
          ],
        ),
        ///////Facebook button ///
        Row(
          children: [
            SizedBox(
              width: size.width * 0.05,
            ),
            Image.asset(IconImages.fB,height: 23,
            width: 23,),
            SizedBox(
              width: size.width * 0.05,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 31),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black87))),
                child: Text(
                  'Continue with Facebook',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )
      ],
    );
  }
}
