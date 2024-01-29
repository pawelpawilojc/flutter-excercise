import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_images.dart';
import 'package:listopad3/views/register/register_view.dart';

import '../../utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool boolValue = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('Sign In',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: HexColor('#471AA0'))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text('Sign Up'),
            ),
            Image.asset(MyImages.imageLogo),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                setState(() {

                  boolValue = !boolValue;
                });
              },
              child: Text('Change bool value ${boolValue.toString()}'),
            ),
          ],
        ),
      ),
    );
  }
}
