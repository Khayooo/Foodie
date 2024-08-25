import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/Welcome/conponents/login_signup_button.dart';
import 'package:food_delivery_app/Welcome/conponents/welcome_image.dart';
import 'package:food_delivery_app/components/background.dart';
import 'package:food_delivery_app/responsive.dart';

class MyWelcomePage extends StatelessWidget {
  const MyWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
        child: SingleChildScrollView(
      child: SafeArea(
          child: MyResponsivePage(
              mobile: MobileWelcomeScreen(),
              desktop: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: WelcomeImage(),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 450,
                        child: LoginAndSignupBtn(),
                      )
                    ],
                  ))
                ],
              ))),
    ));
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
