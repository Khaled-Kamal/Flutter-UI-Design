import 'package:auth/Screens/Signup.dart';
import 'package:auth/Widgets/CustomContainer.dart';
import 'package:auth/Widgets/CustomTextFiled.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/sign in.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Sign in',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset('assets/Line.png', width: 74),
          ),

          SizedBox(height: 20),

          CustomTextFiled(
            name: 'Email',
            hintText: 'Enter Your Email',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(10),
          CustomTextFiled(
            name: 'Password',
            hintText: 'Enter Your Password',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(25),

          CustomContainer(text: 'Login'),

          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an Account ? ',
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
                    MaterialPageRoute(builder: (c) => Signup()),
                  );
                },
                child: Text(
                  'Sign up',
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
