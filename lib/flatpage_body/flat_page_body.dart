
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/colors/colorspage.dart';
import 'package:realstate/widget/bigtext.dart';
import 'package:realstate/widget/icon_text_widget.dart';
import 'package:realstate/widget/smalltext.dart';

class Flatpage extends StatefulWidget {
  const Flatpage({super.key});

  @override
  State<Flatpage> createState() => _FlatpageState();
}

class _FlatpageState extends State<Flatpage> {
  PageController pageController= PageController(viewportFraction: 0.85);
  var _currentpagevalue=0.0;
  double _scalfactor =0.8;
  double _hight=220;
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentpagevalue = pageController.page!;
      });
    });
  }
void dispose(){
  super.dispose();
  pageController.dispose();
}

  @override
  Widget build(BuildContext context) {



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
    Matrix4 matrix =new Matrix4.identity();
    if(index==_currentpagevalue.floor()){  //.floor(0/1)count kore
      var currScale = 1-(_currentpagevalue-index)*(1-_scalfactor);
      var currTrans =_hight*(1-currScale)/2;
      matrix =Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index==_currentpagevalue+1){
      var currScale=_scalfactor-(_currentpagevalue -index+1)*(1-_scalfactor);
      var currTrans =_hight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix =Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index==_currentpagevalue-1){
      var currScale = 1-(_currentpagevalue-index)*(1-_scalfactor);
      var currTrans =_hight*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix =Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
else{
  var currScale =0.8;

  matrix =Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _hight*(1-_scalfactor)/2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
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
              margin: EdgeInsets.only(left: 30,right: 30,bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
boxShadow:[ BoxShadow(
  color: Color(0xFFe8e8e8),
  blurRadius: 5.0,
  offset: Offset(0,5),
),
  BoxShadow(
    color: Colors.white,
    offset: Offset(-5,0)
  ),
  BoxShadow(
      color: Colors.white,
      offset: Offset(5,0)
  )
]
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
      ),
    );

  }
}
