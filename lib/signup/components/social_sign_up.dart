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
  bool loadingGoogleLogin = false;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> loginWithGoogle() async {
    try {
      setState(() {
        loadingGoogleLogin = true;
      });

      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        // The user canceled the sign-in process.
        setState(() {
          loadingGoogleLogin = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Google sign-in canceled")),
        );
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      setState(() {
        loadingGoogleLogin = false;
      });

      return userCredential;
    } on FirebaseAuthException catch (e) {
      setState(() {
        loadingGoogleLogin = false;
      });

      String errorMessage;
      switch (e.code) {
        case 'account-exists-with-different-credential':
          errorMessage = "This account exists with a different sign-in method.";
          break;
        case 'invalid-credential':
          errorMessage = "Invalid credentials. Please try again.";
          break;
        case 'operation-not-allowed':
          errorMessage = "Google sign-in is not enabled.";
          break;
        case 'user-disabled':
          errorMessage = "This user account has been disabled.";
          break;
        case 'user-not-found':
          errorMessage = "No user found with these credentials.";
          break;
        case 'wrong-password':
          errorMessage = "Wrong password.";
          break;
        default:
          errorMessage = "An unknown error occurred: ${e.message}";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      return null;
    } catch (e) {
      setState(() {
        loadingGoogleLogin = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An error occurred: ${e.toString()}")),
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
            loadingGoogleLogin
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
