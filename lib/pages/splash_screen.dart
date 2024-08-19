import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/fontStyles/font_styles.dart';
import 'package:international_tourism/pages/nav_page.dart';
import 'package:international_tourism/photos_url/photo_url.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //BACKGROUND IMAGE
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                sun1,
              ),
              fit: BoxFit.cover,
            ),
          ),
          // Spacer(),

          //WELCOME
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        color: myWhite, fontWeight: boldFont, fontSize: 40),
                  ),
                ),
                Text(
                  'The journey is your dream? Explore the world\nwith our travel app and get the feeling like\nyour own homw.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: boldFont, color: myWhite),
                ),

                //CONTINUE WITH GOOGLE
                customButton(
                  buttonText: 'Continue with Google',
                  buttonIcon: google2,
                  myFun: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NavPage()));
                  },
                ),
                customButton(
                    buttonText: 'Continue with Facebook',
                    buttonIcon: facebook2,
                    myFun: () {}),
                // customButton(
                //   buttonText: 'Continue with Facebook',
                //   buttonIcon: facebook2,
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class customButton extends StatelessWidget {
  const customButton(
      {super.key,
      required this.buttonText,
      required this.buttonIcon,
      required this.myFun});

  final String buttonText;
  final String buttonIcon;
  final void Function() myFun;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        myFun();
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
        decoration: BoxDecoration(
            color: myWhite,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                buttonIcon,
              ),
              radius: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              buttonText,
              style: TextStyle(fontWeight: boldFont),
            )
          ],
        ),
      ),
    );
  }
}
