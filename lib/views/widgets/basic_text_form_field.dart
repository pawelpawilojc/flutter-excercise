import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/utils/my_images.dart';
import 'package:listopad3/utils/my_texts.dart';

class BasicTextFormField extends StatelessWidget {
  const BasicTextFormField({required this.prefixIconChoice, super.key});

  final String prefixIconChoice;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _buildInputDecoration(),
      obscureText: password(),
    );
  }
  bool password(){
    if (prefixIconChoice=='password'){
      return true;
    }
    if (prefixIconChoice=='password2'){
      return true;
    }
    return false;
  }

  InputDecoration _buildInputDecoration() {
    const borderSide = BorderSide(color: Color(0xFF9747FF), width: 2);
    final borderEnabled = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: borderSide,
    );
    const borderSideThicker =
        BorderSide(color: Color(0xFF9747FF), width: 4);
    final borderFocused = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: borderSideThicker,
    );
    const hintStyle = TextStyle(
      fontSize: 15,
      color: Color(0x4D000000),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );

    if (prefixIconChoice == 'person') {
      return InputDecoration(
        prefixIcon: Image.asset(
          MyImages.userIcon,
        ),

        hintText: MyTexts.hintPerson,
        hintStyle: const TextStyle(
          fontSize: 15,
          color: Color(0x4D000000),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0, 3),
              blurRadius: 10,
              color: Color(0x4D000000),
            ),
          ],
        ),
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == 'name') {
      return InputDecoration(
        prefixIcon: Image.asset(
          MyImages.userIcon,
        ),

        hintText: MyTexts.hintName,
        hintStyle: hintStyle,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == 'email') {
      return InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintEmail,
        hintStyle: hintStyle,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == 'password') {
      return InputDecoration(
        prefixIcon: const Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintPassword,
        hintStyle: hintStyle,
        suffixIcon: const Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == 'password2') {
      return InputDecoration(
        prefixIcon: const Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintPassword2,
        hintStyle: hintStyle,
        suffixIcon: const Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }

    return const InputDecoration();
  }
}
