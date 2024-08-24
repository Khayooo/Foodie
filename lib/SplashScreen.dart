import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:food_delivery_app/Welcome/Welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeInOut);

    // Navigate to home screen after the animation
    _controller!.addStatusListener((status) {

    });
    // Timer(Duration(milliseconds: 2500), (){
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) =>
    //       const MyWelcomePage(), // ensure this page exists
    //     ),
    //   );
    // });

  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1.5, // Slightly smaller radius for a more concentrated effect
            stops: [0.0, 0.3, 0.5, 0.7, 0.85, 0.95, 1.0], // Smooth transition stops
            colors: [
              const Color.fromARGB(255, 83, 69, 164), // Deep purple
              const Color.fromARGB(255, 66, 53, 165).withOpacity(.9), // Slightly brighter with less opacity
              const Color.fromARGB(255, 75, 53, 165).withOpacity(.7), // Adjusted opacity for smoother transition
              const Color.fromARGB(255, 121, 112, 159).withOpacity(.5), // Softer tone
              const Color.fromARGB(255, 70, 53, 165).withOpacity(.3), // Lighter with more transparency
              const Color(0xFF6F35A5).withOpacity(.15), // Soft gradient towards the edges
              const Color(0xFF6F35A5).withOpacity(.05), // Barely visible, creating a smooth fade-out effect
            ],
          ),
        ),

        child: Center(
          child: ScaleTransition(
            scale: _animation!,
            child: Text(
              'Foodie',
              style: TextStyle(
                fontSize: 54,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
