import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/login/login_screen.dart';
import 'package:food_delivery_app/signup/sign_up_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: "login_btn",
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                child: Text("Login".toUpperCase(),
                    style: const TextStyle(color: Colors.white)))),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Hero(
            tag: "signup_btn",
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: kPrimaryLightColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Signup".toUpperCase(),
                  style: const TextStyle(color: Colors.black),
                )))
      ],
    );
  }
}
