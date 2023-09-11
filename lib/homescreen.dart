
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/colors/colorspage.dart';
import 'package:realstate/flatpage_body/flat_page_body.dart';
import 'package:realstate/widget/bigtext.dart';
import 'package:realstate/widget/smalltext.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
        Container(
margin: EdgeInsets.only(top: 45,bottom: 15),
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Column(
            children: [
              Bigtext(text: 'Bangladesh',color: Appcolors.maincolor,),
            Row(
              children: [
                SmallText(text: 'Chandpur',color: Colors.black54,),
                Icon(Icons.arrow_drop_down_rounded),
              ],
            ),

            ],

          ),

          Container(

            height: 45,

            width: 45,

          //  color: Colors.blueAccent,
child: Icon(Icons.search,color: Colors.white,),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),

              color: Appcolors.maincolor

            ),

          )

        ],

      ),

    ),
    Flatpage(),
  ],
),
    );
  }
}
