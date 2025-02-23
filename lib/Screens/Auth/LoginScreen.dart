 
 
 import 'package:coffeapp/Components/Container%20Box.dart';
import 'package:coffeapp/Screens/ProfileScreen.dart';
import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen   extends StatefulWidget {
   static const String id ="/LoginScreen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController =TextEditingController();
    passController =TextEditingController();

  }
  TextEditingController? emailController;
  TextEditingController? passController;

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController =TextEditingController();
    passController =TextEditingController();
  }

String? password;

GlobalKey<FormState> loginGlobalKey = GlobalKey<FormState>();

bool isclicked = true;
   @override
   Widget build(BuildContext context) {
     return Scaffold(

resizeToAvoidBottomInset: false,
       backgroundColor: kMainAppColor,



body: SafeArea(
  child:   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Form(
      key: loginGlobalKey,
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.start,
        children: [

      IconButton(onPressed: (){


        Navigator.pop(context);
      },
        icon: const Icon(Icons.cancel_outlined,size: 48,color: kMainColor,),

      ),

          const Padding(
            padding: EdgeInsets.only(top: 25,left: 37,bottom: 76),
            child:  Text("Welcome back!",
            style: TextStyle(fontFamily: "Lobster",fontSize: 48,color: kMainColor,fontWeight: FontWeight.w100),

            ),
          ),


  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text("email",
            style: TextStyle(fontSize: 14,color: Color(0xffF5EDDA),)
        ),


        Container(
          margin: const EdgeInsets.only(bottom: 27),
          decoration: const BoxDecoration(
            color: kMainColor,

            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child:   TextFormField(

            controller: emailController,
            validator: (value){
              RegExp regex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');


              if(value!.isEmpty){
                return "Error Please Enter Your Email";

              }else if(value.length <=10) {
return "Error Please Enter a valid Email" ;

              }else if(!regex.hasMatch(value)){
return "Error Enter a valid Email Format" ;
               }else{
                return null ;
              }
            },
            // initialValue: "salahamleh45@gmail.com",

            keyboardType: TextInputType.emailAddress,

            decoration: const InputDecoration(

              enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2,color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // borderSide: BorderSide(width: 2,color: Colors.greenAccent),

              ),

              hintText: "Email Address",
              prefixIcon: Icon(Icons.email_outlined),


            ),

          ),
        ),



      ],

  ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text("Password",
                  style: TextStyle(fontSize: 14,color: Color(0xffF5EDDA),)
              ),


              Container(
                margin: const EdgeInsets.only(bottom: 27),
                decoration: const BoxDecoration(
                  color: kMainColor,

                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child:   TextFormField(

                  // onChanged: (value){
                  // password=value;
                  // },
                  controller: passController,

                  validator: (value){

       if(value!.isEmpty){
       return "Error Please Enter Your Password";

       }else if(value.length <=8) {
         return "Error Please greater than 8 char or numbers";
       }
        else{
         return null ;
          }
       },

obscureText: isclicked,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(

                    enabledBorder: const OutlineInputBorder(
                      // borderSide: BorderSide(width: 2,color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),

                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      // borderSide: BorderSide(width: 2,color: Colors.greenAccent),

                    ),

                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {

                      });
                      isclicked =!isclicked;

                    },icon: isclicked?const Icon(Icons.visibility_off_rounded):const Icon(Icons.visibility_rounded),),
                   prefixIcon: const Icon(Icons.lock),

                  ),

                ),
              ),



            ],

          ),



          Padding(
           padding: const EdgeInsets.only(top:180  ),
           child: InkWell(onTap: (){
             // print(password);
             // print(emailController.text);
             //
             // if(emailController.text =="salahamleh45@gmail.com"&&passController.text=="1234"){
             //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>StartScreen(),),);
             //
             // }else{
             //   print("Error Enter a valid Email && Password");
             // }\

             if(loginGlobalKey.currentState!.validate()){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen(),),);
             }else{
               print("Error Not Valid");
             }

           },
               child: Box(Title: "Ok!",Box_color: kMainColor,Title_color: kMainAppColor,FontSize: 36,)),
         ),


        ],

      ),
    ),
  ),



),

     );
   }
}

