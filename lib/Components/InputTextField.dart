

import 'package:coffeapp/constant.dart';
import 'package:flutter/material.dart';

class InbutTextField extends StatelessWidget {
String? label;
String? hintText;
TextInputType? type;

InbutTextField({super.key, this.label,this.hintText,this.type});



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("$label",
            style: const TextStyle(fontSize: 14,color: Color(0xffF5EDDA),)
        ),


        Container(
          margin: const EdgeInsets.only(bottom: 27),
          decoration: const BoxDecoration(
            color: kMainColor,

            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child:   TextField(

keyboardType: type,
            decoration: InputDecoration(

              enabledBorder: const OutlineInputBorder(
                // borderSide: BorderSide(width: 2,color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),

              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // borderSide: BorderSide(width: 2,color: Colors.greenAccent),

              ),

              hintText: "$hintText",
              suffix: const Icon(Icons.email_outlined),

            ),

          ),
        ),



      ],

    );
  }
}
