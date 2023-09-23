import 'package:flutter/material.dart';
import 'package:twitter_klone/theme/pallete.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const AuthField({super.key, required this.controller,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        hintStyle: const TextStyle(fontSize: 19),
        hintText: hintText,
        contentPadding: const EdgeInsets.all(22),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            // width: 1,
            color: Pallete.greyColor
          ),
          borderRadius: BorderRadius.circular(6)
        ),
        focusedBorder:  OutlineInputBorder(
          borderSide: const BorderSide(
            width: 3,
            color: Pallete.blueColor
          ),
            borderRadius: BorderRadius.circular(6)
        ),
      ),
    );
  }
}
