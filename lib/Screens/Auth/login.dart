import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tymo_app/Screens/Auth/forget_password.dart';
import 'package:tymo_app/Screens/Auth/registration.dart';
import 'package:tymo_app/Screens/widgets/custom_heading.dart';
import 'package:tymo_app/Screens/widgets/custom_input.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff000211),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            SizedBox(height: 25,),
            CustomHeadings(mainText: 'Sign In to Tymo',
                subText: 'To connect with \n your partner',
                logo: 'assets/ty.png', fontSize: 25, logoSize: 10),
            SizedBox(height: 15,),
            CustomInput(keyboardType: TextInputType.emailAddress,
                labelText: 'Enter Email',
                obsecureText: false, icon: Icons.email,
                size: 18),
            // TextField(
            // decoration: InputDecoration(
            //   filled: true,
            //   fillColor: Colors.grey,
            //   border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(15),
            //     borderSide: BorderSide.none,
            //   ),
            //
            //   prefixIcon: Icon(Icons.email, size: 18,),
            //   prefixIconColor: Colors.green,
            //   label: Text('Enter your Email'),
            //   floatingLabelBehavior: FloatingLabelBehavior.never,
            // ),
            //   keyboardType: TextInputType.emailAddress,
            //   obscureText: false,
            //   autofocus: false,
            //   textAlign: TextAlign.start,
            //   textAlignVertical: TextAlignVertical.center,
            // ),
            SizedBox(height: 15,),
            CustomInput(keyboardType: TextInputType.text,
                labelText: "Enter Password", obsecureText: true,
                icon: Icons.password,
                size: 18,),
            // TextField(
            //   decoration: InputDecoration(
            //     fillColor: Colors.grey,
            //     filled: true,
            //     prefixIcon: Icon(Icons.password),
            //     prefixIconColor: Colors.green,
            //     label: Text('Password'),
            //     labelStyle: TextStyle(color: Colors.white, fontSize: 18),
            //     floatingLabelBehavior: FloatingLabelBehavior.never,
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: BorderSide.none,
            //     ),
            //   ),
            //   obscureText: true,
            //   autofocus: false,
            //
            // ),
SizedBox(height: 15,),
            RoundedLoadingButton(
              width: double.infinity,
                borderRadius: 10,
                color: Colors.green,
                controller: _btnController, onPressed: (){
            },
                child: Text('Log In')),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                  },
                  child: Text('Forget Password?', style: TextStyle(color: Colors.redAccent),
                  ),
                ),),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                }, child: Text('Sign Up'))
              ],
            )



          ],
        ),
      ),
    );
  }
}
