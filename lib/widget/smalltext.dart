

import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color ?color;
  double Size;
  double height;
  SmallText({super.key, required this.text,
  this.color = const Color(0xFFccc7c5),
    this.Size=15,
    this.height=1.2
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(fontSize: Size,color: color,height: height),
    );
  }
}
