
import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const String id = "/StartScreen";

  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(




      body: Stack(

        children: [

          SizedBox(width: double.infinity,child: Image.asset("assets/images/Background 1.png",fit: BoxFit.cover,)),


          Positioned(top: 109,left: 52,child: Image.asset("assets/images/Icon.png")),

          Positioned(
            bottom: 61,
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){

                    Navigator.pushNamed(context, "/LoginScreen");

                  },
                  child: Box(Box_color: kMainColor,Title: "login",Title_color: const Color(0xff363636),FontSize: 36,),
                ),
                GestureDetector(
                  onTap :(){

                Navigator.pushNamed(context, "/RegisterScreen");

                },
                  child: const Center(child: Text(
                    "Register Me",
                    style: TextStyle(color: Color(0xffFFFFFF),fontSize: 14),
                  )),
                ),

              ],

            ),
          ),


        ],


      ),





    );
  }
}
