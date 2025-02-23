


import 'package:coffeapp/Screens/AboutScreen.dart';
import 'package:coffeapp/Screens/Auth/LoginScreen.dart';
import 'package:coffeapp/Screens/Auth/RegisterScreen.dart';
import 'package:coffeapp/Screens/ListAndGridViewTest.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/Screens/SplachScreen.dart';
import 'package:coffeapp/Screens/StartScreen.dart';
import 'package:coffeapp/Screens/StatesScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/Menu/MenuCoffeeScreen.dart';
import 'Screens/Menu/MenuScreen.dart';
import 'Screens/OrderScreen.dart';

void main(){

  runApp(MaterialApp(

    // home: AboutScreen(),
    initialRoute: AboutScreen.id,
    debugShowCheckedModeBanner: false,

    routes: {
      StartScreen.id:(context)=>const StartScreen(),
      ProfileScreen.id:(context)=>const ProfileScreen(),
      AboutScreen.id:(context)   =>const AboutScreen(),
      MenuScreen.id:(context)=>const MenuScreen(),
      MenuCoffeeScreen.id:(context)=>const MenuCoffeeScreen(),
      testState.id:(context)=>testState(),
      SplachScreen.id:(context)=>const SplachScreen(),
      StatesScreen.id:(context)=>const StatesScreen(),
      OrderScreen.id:(context)=>const OrderScreen(),
      LoginScreen.id:(context)=>const LoginScreen(),
      RegisterScreen.id:(context)=>const RegisterScreen(),

    },
  ),);


}

















