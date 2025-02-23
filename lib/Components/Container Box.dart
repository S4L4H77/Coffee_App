



import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  String? Title;
  Color? Box_color;
  Color? Title_color;
  double? FontSize;

  Box({super.key, this.Box_color,this.Title,this.Title_color,this.FontSize});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 81),
      width: 227,
      height: 63,
      decoration: BoxDecoration(

          color: Box_color,
          borderRadius: const BorderRadius.all(Radius.circular(30))

      ),
      child: Center(
        child: Text("$Title",
            style: TextStyle(fontSize:FontSize,color: Title_color,fontWeight: FontWeight.w500,fontFamily: "Lobster")),
      ),
    );
  }
}
