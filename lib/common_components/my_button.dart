import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  final Function onButtonPressed;
  const MyButton(
      {super.key, required this.buttonName, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(100, 50)),
          backgroundColor: MaterialStateProperty.all(Colors.redAccent.shade200),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      onPressed: () {
        onButtonPressed();
      },
      child: Text(
        buttonName,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
