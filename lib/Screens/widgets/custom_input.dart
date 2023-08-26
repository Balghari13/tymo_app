import 'package:flutter/material.dart';


class CustomInput extends StatelessWidget {

 final TextInputType keyboardType;
 final String labelText;
 final bool obscureText;
 final IconData icon;


  const CustomInput({super.key, required this.keyboardType,
    required this.labelText, required this.obscureText,
    required this.icon, });

  @override
  Widget build(BuildContext context) {
    return TextField(
keyboardType: keyboardType,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      textAlignVertical: TextAlignVertical.center,
      obscureText: obscureText,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.grey.shade300,
        filled: true,
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),

        )
      ),


    );
  }
}
