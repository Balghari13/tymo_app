import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tymo_app/Screens/Auth/login.dart';
import 'package:tymo_app/Screens/widgets/custom_heading.dart';
import 'package:tymo_app/Screens/widgets/custom_input.dart';

class RegistrationScreen extends StatelessWidget {
   RegistrationScreen({super.key});

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            CustomHeadings(mainText: 'Register Yourself',
                subText: 'To connect with \n your partner' ,
                logo: 'assets/ty.png', fontSize: 18, logoSize: 10),
            SizedBox(height: 15,),
            CustomInput(keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                obsecureText: false, icon: Icons.email, size: 15),
            SizedBox(height: 15,),
            CustomInput(keyboardType: TextInputType.text,
                labelText: "Password",
                obsecureText: true, icon: Icons.password, size: 15),
            SizedBox(height: 15,),
            CustomInput(keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                obsecureText: true, icon: Icons.password, size: 15),
            SizedBox(height: 15,),
            RoundedLoadingButton(
              color: Colors.green,
                borderRadius: 15,
                width: double.infinity,
                controller: _btnController,
                onPressed: (){},
                child: Text('Sign Up')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                }, child: Text('Log In'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
