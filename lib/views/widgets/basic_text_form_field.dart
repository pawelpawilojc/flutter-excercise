import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';

class BasicTextFormField extends StatelessWidget {
  const BasicTextFormField(
      {super.key, required this.initialValue, required this.prefixIconChoice});

  final String initialValue;
  final String prefixIconChoice;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: _buildInputDecoration(),
    );
  }

  InputDecoration _buildInputDecoration() {
    if (prefixIconChoice == "person") {
      return InputDecoration(
        prefixIcon: Icon(Icons.person_outline_rounded),
        prefixIconColor: MyColors.enchantingAmethystColor,
      );
    }
    if (prefixIconChoice == "email") {
      return InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        prefixIconColor: MyColors.enchantingAmethystColor,
      );
    }
    if (prefixIconChoice == "password") {
      return InputDecoration(
        prefixIcon: Icon(Icons.lock_outline_rounded),
        prefixIconColor: MyColors.enchantingAmethystColor,
        suffixIcon: Icon(Icons.remove_red_eye_outlined),
        suffixIconColor: MyColors.grayColor,
      );
    }

    return InputDecoration();
  }
}
