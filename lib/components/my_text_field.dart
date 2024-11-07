import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final TextEditingController controller;
  const MyTextField({super.key, required this.hintText, required this.obscuretext, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      obscureText: obscuretext,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 119, 64, 52),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 119, 64, 52),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 93, 50, 40),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 175, 65, 57),
          ),
        ),
      ),
    );
  }
}