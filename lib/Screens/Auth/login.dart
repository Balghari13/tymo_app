
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tymo_app/Screens/widgets/custom_heading.dart';
import 'package:tymo_app/Screens/widgets/custom_input.dart';


class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
void logIn(){
  print('logging...');
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log In',
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 24, fontFamily: 'Poppins'),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff000211),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           CustomHeadings(mainText: 'Sign in to Tympooo', subText: 'To connect with \n your partner', logo: 'assets/ty.png', logoSize: 30,

           ),

            const SizedBox(height: 15,),
            // TextField(
            //   textAlign: TextAlign.start,
            //   textInputAction: TextInputAction.none,
            //   obscureText: false,
            //   autofocus: false,
            //   keyboardType: TextInputType.emailAddress,
            //   textAlignVertical: TextAlignVertical.center,
            //   decoration: InputDecoration(
            //     //hintText: 'Email',
            //     fillColor: Colors.grey.shade300,
            //     filled: true,
            //     label: const Text('Email'),
            //     floatingLabelBehavior: FloatingLabelBehavior.never,
            //     prefixIcon: const Icon(Icons.email),
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide.none,
            //       borderRadius: BorderRadius.circular(10.0),
            //     )
            //   ),
            //   style: const TextStyle(fontFamily: 'Poppins'),
            // ),
            const SizedBox(height: 15,),
         const CustomInput(keyboardType: TextInputType.emailAddress,
             labelText: 'Email', obscureText: false, icon: Icons.email),
            const SizedBox(height: 15,),
            const CustomInput(keyboardType: TextInputType.name,
                labelText: 'password',
                obscureText: true, icon: Icons.lock,
                ),
            const SizedBox(height: 15,),


            RoundedLoadingButton(
                width: double.infinity,
                borderRadius: 10,
                color: Colors.green,
                controller: _btnController,
                onPressed: logIn,
                child: const Text('Log In')),
            const SizedBox(height: 15,),
            const Text('Forget Password', style: TextStyle(color: Colors.red),),
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have ab account?"),
                Text('Sign Up.', style:
                TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
              ],
            )


          ],
        ),
      )
    );
  }
}
