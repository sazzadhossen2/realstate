
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/colors/colorspage.dart';
import 'package:realstate/widget/bigtext.dart';
import 'package:realstate/widget/icon_text_widget.dart';
import 'package:realstate/widget/smalltext.dart';

class Flatpage extends StatelessWidget {
  const Flatpage({super.key});



  @override
  Widget build(BuildContext context) {
    PageController pageController= PageController(viewportFraction: 0.85);
    return Container(
      height: 320,
//color: Colors.pink,
child: PageView.builder(
  controller: pageController,
    itemCount: 5,
    itemBuilder: (context,position){
  return _buildpageitem (position);
}),
    );
  }
  Widget _buildpageitem (int index){
    return Stack(
      children:[

        Container(
        height: 220,
        margin: EdgeInsets.only(left: 10,right: 10),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(30),
 // color: Colors.pink,
  image: DecorationImage(fit: BoxFit.cover,
      image: AssetImage('assets/images/house1.jpg'),
  ),
),
      ),
        Align(
          alignment: Alignment.bottomCenter,
          child:Container(
            height: 120,
            margin: EdgeInsets.only(left: 30,right: 30,bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,

            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Bigtext(text: 'Dhaka Bangladesh',),
                    SizedBox(height: 10,),
            Row(
                children: [
                  Wrap(  children:   List.generate(5, (index) => Icon(Icons.star,color: Appcolors.maincolor,size: 15,))
                  ),
                  SizedBox(width: 10,),
                  SmallText(text: '4.5 '),
                  SizedBox(width: 10,),
                  SmallText(text: '145'),
                  SizedBox(width: 10,),
                  SmallText(text: 'Comments')
                ],
            ), 
             SizedBox(height: 15,),
                  Row(
                    children: [
                      Icontextwidget(icon: CupertinoIcons.bed_double_fill, text: '3 bed', iconcolor: Appcolors.iconcolor1),

                    SizedBox(width: 25,),
                    Icontextwidget(icon:Icons.bathroom, text:'2 bath', iconcolor:Appcolors.iconcolor2),
                    SizedBox(width: 15,),
                      Icontextwidget(icon:Icons.location_on, text: '1230', iconcolor: Appcolors.iconcolor1)
                    ],
                  ),
                  ],
                ),
              ),
            ),
          ),

        ),
      ]
    );

  }
}
