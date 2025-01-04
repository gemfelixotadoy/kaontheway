// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:foodapp/components/my_button.dart';
import 'package:foodapp/components/my_textfield.dart';
import 'package:foodapp/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  
  
  
  const RegisterPage({
    super.key,
    required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controller
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();


  //register method 
  void register () async {
    
    // get auth service
    final _authService = AuthService();

    // check if passwords match --> create user
    if (passwordController.text == confirmPasswordController.text) {
      // try creating user
      try {
        await _authService.signUpWithEmailPassword(emailController.text, passwordController.text,);
      }

      // display any errors
      catch (e) {
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }

    // if passwords don't match --> show error
    else {
      showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text("Passwords don't match"),
          ),
        );
    }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
        
              const SizedBox(height: 25),

            //message, app slogan
            Text("Create an Account", 
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,

              ),
            ),
  
            const SizedBox(height: 25),

            //email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 10),

            //confirm password textfield
            MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirm password",
              obscureText: true,
            ),

            const SizedBox(height: 10),
            //sign in button
                MyButton(
        text: "Sign Up", 
        onTap: () {
          register();
        },
      ),

            const SizedBox(height: 10),

            //already have an account? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
              ),
        ],),
      )
    );
  }
}