import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:flutter/material.dart';

class PassTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData prefeixIcon;
  final IconData? suffixIcon;
  const PassTextField(
      {Key? key,
      required this.hintText,
      required this.prefeixIcon,
      required this.obscureText,
      required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .85,
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: ColorsConstants.onboarding),
            prefixIcon: Icon(prefeixIcon),
            suffixIcon: Icon(suffixIcon),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.0),
            ),
            filled: true,
            fillColor: Colors.white
          ),
        ),
      ),
    );
  }
}