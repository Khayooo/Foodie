import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/background.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/responsive.dart';
import 'package:food_delivery_app/signup/components/sign_up_form.dart';

import 'components/sign_up_top_image.dart';

import 'components/social_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: MyResponsivePage(

          mobile: MobileSignupScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: SignUpScreenTopImage(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: SignUpForm(),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    // SocalSignUp()
                  ],
                ),
              )
            ],
          ),
      )
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignUpScreenTopImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),
            ),
            Spacer(),
          ],
        ),
        SocalSignUp()
      ],
    );
  }
}
