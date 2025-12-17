import 'package:auth/Screens/Signin.dart';
import 'package:auth/Widgets/CustomContainer.dart';
import 'package:auth/Widgets/CustomTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/sign up.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Sign up',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset('assets/Line.png', width: 74),
          ),

          Gap(20),
          CustomTextFiled(
            name: 'Email',
            hintText: 'Enter Your Email',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(8),
          CustomTextFiled(
            name: 'Phone Number',
            hintText: 'Enter Your Number',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(8),
          CustomTextFiled(
            name: 'Password',
            hintText: 'Enter Your Password',
            suffixIcon: Icons.visibility,
          ),
          Gap(8),
          CustomTextFiled(
            name: 'Confirm Password',
            hintText: 'Enter Your Password',
            suffixIcon: Icons.visibility,
          ),
          Gap(18),
          CustomContainer(text: 'Create Account'),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an Account! ',
                style: TextStyle(
                  color: Color(0xff616161),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => Signin()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xffFF8383),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
