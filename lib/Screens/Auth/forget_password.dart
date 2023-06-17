import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tymo_app/Screens/widgets/custom_heading.dart';
import 'package:tymo_app/Screens/widgets/custom_input.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            CustomHeadings(mainText: 'Forget your Password',
                subText: '',
                logo: 'assets/ty.png',
                fontSize: 20, logoSize: 12),
            Icon(Icons.lock_outline, size: 200,),
            Text('To request a reset password, please'
                ' enter your email. A reset password link'
                ' will be send on that email.', textAlign: TextAlign.center,),
SizedBox(height: 15,),
            CustomInput(keyboardType: TextInputType.emailAddress,
                labelText: "Enter Email",
                obsecureText: false, icon: Icons.email, size: 15),
            SizedBox(height: 15,),
            RoundedLoadingButton(
              borderRadius: 15,
                color: Colors.green,
                controller:_btnController,
                onPressed: (){}, child: Text('Reset'))
          ],
        ),
      ),
    );
  }
}
