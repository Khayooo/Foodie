import 'package:flutter/material.dart';
import 'package:food_delivery_app/homePage/homePage.dart';
import 'package:food_delivery_app/signup/components/or_divider.dart';
import 'package:food_delivery_app/signup/components/social_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SocalSignUp extends StatefulWidget {
  const SocalSignUp({
    super.key,
  });

  @override
  State<SocalSignUp> createState() => _SocalSignUpState();
}

class _SocalSignUpState extends State<SocalSignUp> {
  bool loadingGooleLogin = false;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> loginWithGoogle() async {
    try {
      setState(() {
        loadingGooleLogin = true;
      });
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      setState(() {
        loadingGooleLogin = false;
      });
      return await _auth.signInWithCredential(credential);
    } on FirebaseException catch (e) {
      setState(() {
        loadingGooleLogin = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.code)),
      );
    } catch (e) {
      loadingGooleLogin = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocalIcon(
              iconSrc: "assets/icons/facebook.svg",
              press: () {},
            ),
            SocalIcon(
              iconSrc: "assets/icons/twitter.svg",
              press: () {},
            ),
            loadingGooleLogin
                ? CircleAvatar(
              radius: 32,
              child: CircularProgressIndicator(),
            )
                : SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () async {
                      var user = await loginWithGoogle();
                      if (user != null) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ),
                        );
                      }
                    },
                  ),
          ],
        ),
      ],
    );
  }
}
