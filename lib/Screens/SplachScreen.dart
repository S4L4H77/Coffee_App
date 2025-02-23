

import 'package:coffeapp/Screens/StartScreen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {

  static const String id = "/SplachScreen";

  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
            (value)=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>
                  const StartScreen(),
              ),
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      body: Center(child: Image.asset("assets/images/Icon.png"),),

    );
  }
}
