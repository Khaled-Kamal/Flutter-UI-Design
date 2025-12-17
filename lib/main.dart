import 'package:auth/Screens/Welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Auth());
}

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
