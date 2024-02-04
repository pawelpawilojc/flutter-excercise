import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/utils/my_texts.dart';

class Tasks extends StatelessWidget {
  const Tasks({required this.number, super.key});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor:
          number.isEven ? MyColors.emeraldBlissColor : MyColors.goldenHuesColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          width: 4,
          color: number.isEven
              ? MyColors.midnightOrchidColor
              : MyColors.enchantingAmethystColor,
        ),
      ),
      elevation: 6,
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          MyTexts.taskTitle + number.toString(),
          style: TextStyle(
            fontSize: 25,
            color: number.isEven
                ? MyColors.midnightOrchidColor
                : MyColors.enchantingAmethystColor,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number.isEven
                  ? MyTexts.taskDescription
                  : MyTexts.taskDescription2,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                color: MyColors.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Last modification: \nSaturday the 3rd of February, 2024',
              style: TextStyle(color: MyColors.grayColor),
            ),
          ],
        ),
      ),
    );
  }
}
