
import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';

class StatesScreen extends StatelessWidget {
  static const String id = "/StatesScreen";

  const StatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: const Color(0xffA9A454),

   
      body:  SizedBox(
        width: double.infinity,
        child: Stack(

          children: [
            Positioned(top: 151,left: 80,child: Image.asset("assets/images/gis_drone.png")),

            const Positioned(
              top: 70,
              left: 62,
              child: SizedBox(
                width: 265,
                height: 71,
                child: Column(

crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text("Order number ",
                    style: TextStyle(fontSize: 18,color: Color(0xffFFFFFF)),),

                    Text(" #23VF40CCE9 ", style: TextStyle(fontSize: 36,color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
            ),


            const Positioned(top: 402,left: 40 ,child: SizedBox(
              width: 313,
              height: 125,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Your order is on ",
                  style: TextStyle(fontSize: 48,fontFamily: "Lobster",color: Color(0xffFFFFFF)),
                  ),
                  Text(" its way! ",
                    style: TextStyle(fontSize: 48,fontFamily: "Lobster",color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            )),
            
            
            const Positioned(bottom: 190,left:40,child: SizedBox(
              width: 313,
              height: 47,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[

                Text("Time: ",
                style: TextStyle(fontSize: 24,color: Color(0xffFFFFFF),fontWeight: FontWeight.w500)),

               Text("6 minutes",
           style: TextStyle(fontSize: 24,color: Color(0xffFFFFFF),fontWeight: FontWeight.w800)),
        ]

        ),
            ),),


            Positioned  (
              bottom: 81,
              child: InkWell(onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen(),),);

              },child: Box(Box_color: kMainColor,Title: "Nice!",Title_color: const Color(0xff363636),FontSize: 36,)),

            ),


        ],
      ),
    ),
    );
  }
}

