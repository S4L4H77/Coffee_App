

import 'package:coffeapp/Screens/AboutScreen.dart';
import 'package:coffeapp/Screens/Auth/LoginScreen.dart';
import 'package:coffeapp/Screens/Menu/MenuCoffeeScreen.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/Screens/StartScreen.dart';
import 'package:coffeapp/Screens/StatesScreen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class MenuScreen extends StatelessWidget {
  static const String id = "/MenuScreen";

  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> const StartScreen()));
          },child: const Icon(Icons.cancel,color: kMainColor,size: 48,)),

        ),

      ),


      body: SizedBox(

        width: double.infinity,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child:   InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MenuCoffeeScreen()));
                
              },child: const Text("Menu",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),)),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutScreen()));

              },child: const Text("About",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
            ),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child:InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));

              },child: const Text("Profile",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
            ),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const StatesScreen()));

              },child: const Text("Status",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),)),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),

            InkWell(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen(),),);

              },
              child: const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text("Log Out",style: TextStyle(color: kMainColor,fontSize: 48,fontFamily: "Lobster"),),
              ),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              thickness: 2,
              color: Color(0xff98694F),
            ),



          ],


        ),


      ) ,

    );
  }
}