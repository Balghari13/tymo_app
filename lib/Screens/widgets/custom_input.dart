import 'package:flutter/material.dart';


class CustomInput extends StatelessWidget {

  final TextInputType keyboardType;
  final String labelText;
  final bool obsecureText;
  final IconData icon;
  final double size;


  const CustomInput({super.key, required this.keyboardType,
    required this.labelText, required this.obsecureText,
    required this.icon, required this.size});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),

        prefixIcon: Icon(icon, size:size,),
        prefixIconColor: Colors.green,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black, fontSize: size),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      keyboardType: TextInputType.emailAddress,
      obscureText: obsecureText,
      autofocus: false,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
    );
  }
}
