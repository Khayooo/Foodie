import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/already-have_an_account_acheck.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/homePage/homePage.dart';
import 'package:food_delivery_app/login/login_screen.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  bool loading = false;
  bool _obscureText = true;
  late final TextEditingController _passwordController =
  TextEditingController();
  late final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;


  void Signup(){
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      // _auth
      //     .createUserWithEmailAndPassword(
      //     email: _emailController.text.toString(),
      //     password: _passwordController.text.toString())
      //     .then((value) {
      //   setState(() {
      //     loading = false;
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(content: Text('Signup successful')),
      //     );
      //     Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) {
      //           return const HomePage();
      //         },
      //       ),
      //     );
      //   });
      // }).onError((error, stackTrace) {
      //   setState(() {
      //     loading = false;
      //   });
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text(error.toString())),
      //   );
      // });
      _emailController.clear();
      _passwordController.clear();
    }
  }


  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              String pattern =
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
              RegExp regex = RegExp(pattern);
              if (!regex.hasMatch(value)) {
                return 'Enter a valid email address';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
         Hero(
            tag: "signup_btn",
            child: ElevatedButton(
              onPressed: () {
Signup();
              },
              child: Text("Sign Up".toUpperCase()),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
