import 'package:flutter/material.dart';

class CustomHeadings extends StatelessWidget {
 final String mainText;
 final String subText;
 final String logo;
 final double logoSize;


   CustomHeadings({super.key,
     required this.mainText, required this.subText,
     required this.logo, required this.logoSize, });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
             Text(mainText),
            Image.asset(logo, height: logoSize, width: logoSize,),
          ],
        ),
         Text(subText),
      ],
    );

  }
}
