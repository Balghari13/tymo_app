import 'package:flutter/material.dart';

class CustomHeadings extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

   CustomHeadings({required this.mainText,
     required this.subText, required this.logo,
     required this.fontSize, required this.logoSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(mainText,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize)),
            Container(
              width: 50,
              height: 50,
              child: Image.asset(logo, filterQuality: FilterQuality.high,),
            ),
          ],

        ),
    Align(
    alignment: Alignment.centerLeft,
    child: Text('To connect with \n your partner',
    style:
    TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    ),
      ],
    );

  }
}
