import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.name, required this.hintText, required this.suffixIcon});
  final String name;
  final String hintText;
  final IconData suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(name , style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16 ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
              border: UnderlineInputBorder(),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color : Color(0xffFF8383),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color : Color(0xffBDBDBD),
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
