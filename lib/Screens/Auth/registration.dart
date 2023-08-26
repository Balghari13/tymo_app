import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tymo_app/Screens/widgets/custom_heading.dart';
import 'package:tymo_app/Screens/widgets/custom_input.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
void onRegister(){
  print('registered');
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            CustomHeadings(
              mainText: 'Sign to Qoineer',
              subText: '& Continue Winnig \n Crypto Trades',
              logo: 'assets/ty.png',
              logoSize: 18,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomInput(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Email',
                obscureText: false,
                icon: Icons.email),
            const SizedBox(
              height: 15,
            ),
            const CustomInput(
                keyboardType: TextInputType.name,
                labelText: 'password',
                obscureText: true,
                icon: Icons.lock),
            const SizedBox(
              height: 15,
            ),
            const CustomInput(
                keyboardType: TextInputType.name,
                labelText: 'confirm password',
                obscureText: true,
                icon: Icons.lock_reset),
            const SizedBox(
              height: 15,
            ),
            RoundedLoadingButton(
                width: double.infinity,
                color: Colors.green,
                borderRadius: 10,
                controller: _btnController,
                onPressed: onRegister, child: const Text('Register')

            ),
            const SizedBox(
              height: 15,
            ),
            const Text('By registering you agree to our terms and conditions', style: TextStyle(
              color: Colors.grey
            ),),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Text('Log In.', style:
                TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
