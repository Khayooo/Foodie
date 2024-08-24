import 'package:flutter/material.dart';
import 'package:food_delivery_app/SplashScreen.dart';
import 'package:food_delivery_app/Welcome/Welcome_screen.dart';
import 'package:food_delivery_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: kPrimaryColor,
       scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: kPrimaryColor,
            shape: const StadiumBorder(),
            minimumSize:  const Size(double.infinity, 56),
              maximumSize: const Size(double.infinity, 56),
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColor,
          prefixIconColor: kPrimaryColor,
          contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),

        )
      ),

      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Food Delivery App"),
      ),
      body: Column(
        children: [

          Image.asset("assets/images/Eating.png")
        ],
      )
    );
  }
}
