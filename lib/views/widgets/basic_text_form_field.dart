import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/utils/my_images.dart';
import 'package:listopad3/utils/my_texts.dart';

class BasicTextFormField extends StatelessWidget {
  const BasicTextFormField({super.key, required this.prefixIconChoice});

  final String prefixIconChoice;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _buildInputDecoration(),
    );
  }

  InputDecoration _buildInputDecoration() {
    final borderSide = const BorderSide(color: Color(0xFF9747FF), width: 2.0);
    final borderEnabled = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: borderSide,
    );
    final borderSideThicker =
        const BorderSide(color: Color(0xFF9747FF), width: 4.0);
    final borderFocused = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: borderSideThicker,
    );
    final hintStyle = const TextStyle(
      fontSize: 15,
      color: Color(0x4D000000),
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );

    if (prefixIconChoice == "person") {
      return InputDecoration(
        prefixIcon: Image.asset(
          MyImages.userIcon,
        ),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintPerson,
        hintStyle: TextStyle(
          fontSize: 15,
          color: Color(0x4D000000),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0.0, 3.0),
              blurRadius: 10.0,
              color: Color(0x4D000000),
            ),
          ],
        ),
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == "name") {
      return InputDecoration(
        prefixIcon: Icon(Icons.person_outline_rounded),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintName,
        hintStyle: hintStyle,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == "email") {
      return InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintEmail,
        hintStyle: hintStyle,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == "password") {
      return InputDecoration(
        prefixIcon: Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintPassword,
        hintStyle: hintStyle,
        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }
    if (prefixIconChoice == "password2") {
      return InputDecoration(
        prefixIcon: Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.midnightOrchidColor,
        hintText: MyTexts.hintPassword2,
        hintStyle: hintStyle,
        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
        enabledBorder: borderEnabled,
        focusedBorder: borderFocused,
      );
    }

    return InputDecoration();
  }
}
