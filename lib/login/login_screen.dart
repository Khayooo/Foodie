import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/components/background.dart';
import 'package:food_delivery_app/login/components/login_form.dart';
import 'package:food_delivery_app/login/components/login_screen_top_image.dart';
import 'package:food_delivery_app/responsive.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
 return Background(child: SingleChildScrollView(
   child: MyResponsivePage(
       mobile: const MyMobileLoginScreen(),

       desktop: Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: [
       Expanded(
         child: LoginScreenTopImage(),
       ),
       Expanded(child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(width: 450,
             child: LoginForm(),)
         ],
       ))
     ],
   ))
   ,));
  }
  
}

class MyMobileLoginScreen extends StatelessWidget {
  const MyMobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}