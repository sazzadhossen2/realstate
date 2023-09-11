
import 'package:flutter/cupertino.dart';

class Bigtext extends StatelessWidget {
  final String text;
  Color ?color;
  TextOverflow textOverflow;
  double Size;
  Bigtext({super.key, required this.text,
  this.color=const Color(0xFF332d2b),
    this.Size=20,
    this.textOverflow=TextOverflow.ellipsis
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,overflow: textOverflow,
      maxLines: 1,
      style: TextStyle(fontSize: Size,color: color),

    );
  }
}
