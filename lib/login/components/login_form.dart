import 'package:flutter/material.dart';
import 'package:food_delivery_app/homePage/homePage.dart';
import 'package:food_delivery_app/signup/sign_up_screen.dart';
import '../../../constants.dart';
import '../../components/already-have_an_account_acheck.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  late final TextEditingController _passwordController = TextEditingController();
  late final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  FirebaseAuth _auth = FirebaseAuth.instance;


  void login() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      _auth
          .signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim())
          .then((value) {
        setState(() {
          loading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login Successfully")),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      }).onError((error, stackTrace) {
        setState(() {
          loading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.toString())),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formkey,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              // controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter your email";
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Your email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: TextFormField(
                // controller: _passwordController,
                textInputAction: TextInputAction.done,
                obscureText: true,
                cursorColor: kPrimaryColor,
                validator: (value) {
                  if(value!.isEmpty){
                    return "Please enter your password";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Your password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            // _isLoading
            //     ? const CircularProgressIndicator()
            //     :
                Hero(
              tag: "login_btn",
              child: ElevatedButton(
        
                onPressed: () {
                  login();

                },
                child: Text("Login".toUpperCase(), style: TextStyle( color: Colors.white),),
              ),
            ),
        
            const SizedBox(height: kDefaultPadding),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


