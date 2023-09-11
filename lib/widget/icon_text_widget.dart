
import 'package:flutter/cupertino.dart';
import 'package:realstate/widget/smalltext.dart';

class Icontextwidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconcolor;
  Icontextwidget({super.key, required this.icon, required this.text, required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
child: Row(
  children: [
        Icon(icon,color: iconcolor,),
    SizedBox(width: 5,),
    SmallText(text:text,),
  ],
),
    );
  }
}
