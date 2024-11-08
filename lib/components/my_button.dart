import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color?>(
          const Color(0xff985242),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      ),
    );
  }
}
