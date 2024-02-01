import 'package:flutter/material.dart';

import '../../utils/my_colors.dart';
import '../../utils/my_images.dart';
import '../../utils/my_texts.dart';
import '../widgets/basic_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        Row(children: [
          const SizedBox(height: 10, width: 20),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Image.asset(MyImages.backIcon),
                Text(MyTexts.back,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: MyColors.midnightOrchidColor)),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(MyImages.corner_ballons)
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(MyTexts.signUp,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: MyColors.midnightOrchidColor)),
            ),
            const SizedBox(height: 30),
            const BasicTextFormField(prefixIconChoice: "name"),
            const SizedBox(height: 30),
            const BasicTextFormField(prefixIconChoice: "email"),
            const SizedBox(height: 30),
            const BasicTextFormField(prefixIconChoice: "password"),
            const SizedBox(height: 30),
            const BasicTextFormField(prefixIconChoice: "password2"),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      MyColors.enchantingAmethystColor),
                  minimumSize: MaterialStateProperty.all<Size>(
                      const Size(double.infinity, 50.0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ))),
              child: const Text(
                MyTexts.signUp,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    MyTexts.noAccount,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: MyColors.midnightOrchidColor,
                    ),
                  ),
                  Text(
                    MyTexts.signIn,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: MyColors.midnightOrchidColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ]),
        )
      ]))),
    );
  }
}
