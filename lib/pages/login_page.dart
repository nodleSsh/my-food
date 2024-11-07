import 'package:flutter/material.dart';
import 'package:myfood/components/logo.dart';
import 'package:myfood/components/my_button.dart';
import 'package:myfood/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailCotroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4EBE5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create the best dishes and save their recipes',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 93, 50, 40),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyTextField(
                hintText: 'Your email',
                obscuretext: false,
                controller: emailCotroller,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                hintText: 'Password',
                obscuretext: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: const Text('Create account'),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              MyButton(
                onPressed: login,
                text: 'Log in',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
