import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WelcomeImage extends StatelessWidget{
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
 return Column(
   children: [
Text("Welcome to foodie", style: Theme.of(context).textTheme.headlineLarge?.copyWith(
  color: Colors.black,
  fontWeight: FontWeight.bold
),),
     const SizedBox(height: kDefaultPadding*2,),
     Row(
       children: [
         const Spacer(),
         SizedBox(
           height: 300,
           width: 300,
           child: SvgPicture.asset('assets/icons/foodlogo.svg'),
         ),
         const Spacer(),
       ],
     ),
     const SizedBox(height: kDefaultPadding*2,),
    ],
 );
  }

}