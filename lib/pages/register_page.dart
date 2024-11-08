import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfood/components/logo.dart';
import 'package:myfood/components/my_button.dart';
import 'package:myfood/components/my_text_field.dart';
import 'package:myfood/helper/helper_function.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailCotroller = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPassController = TextEditingController();

  void register()async{
    showDialog(
      context: context, 
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if(passwordController.text != confirmPassController.text){
      Navigator.pop(context);
      displayMessageToUser("Passowrds don't match!", context);
    }
    else{
      try{
        UserCredential? userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailCotroller.text, password: passwordController.text,);
        Navigator.pushNamed(context, '/home_page');
      }on FirebaseAuthException catch(e){
        Navigator.pop(context);
        displayMessageToUser(e.code, context);
      }
    }
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
              MyTextField(
                hintText: 'Change password', 
                obscuretext: true, 
                controller: confirmPassController,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('I have an account'),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/login_page');
                    },
                    child: const Text('Sign in'),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              MyButton(
                onPressed: register,
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}