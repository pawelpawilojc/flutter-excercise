import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
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
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: borderSide,
    );
    if (prefixIconChoice == "person") {
      return InputDecoration(
        prefixIcon: Icon(Icons.person_outline_rounded),
        prefixIconColor: MyColors.enchantingAmethystColor,
        hintText: MyTexts.hintPerson,
        border: border,
      );
    }
    if (prefixIconChoice == "name") {
      return InputDecoration(
        prefixIcon: Icon(Icons.person_outline_rounded),
        prefixIconColor: MyColors.enchantingAmethystColor,
        hintText: MyTexts.hintName,
        border: border,
      );
    }
    if (prefixIconChoice == "email") {
      return InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        prefixIconColor: MyColors.enchantingAmethystColor,
        hintText: MyTexts.hintEmail,
        border: border,
      );
    }
    if (prefixIconChoice == "password") {
      return InputDecoration(
        prefixIcon: Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.enchantingAmethystColor,
        hintText: MyTexts.hintPassword,
        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
        border: border,
      );
    }
    if (prefixIconChoice == "password2") {
      return InputDecoration(
        prefixIcon: Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.enchantingAmethystColor,
        hintText: MyTexts.hintPassword2,
        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
        border: border,
      );
    }

    return InputDecoration();
  }
}
