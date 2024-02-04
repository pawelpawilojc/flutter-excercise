import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/utils/my_images.dart';
import 'package:listopad3/utils/my_texts.dart';
import 'package:listopad3/views/login/login_view.dart';
import 'package:listopad3/views/widgets/tasks.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> changeLoginState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('logged', false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(MyImages.homeBalloons),
                  Text(
                    MyTexts.home,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: MyColors.midnightOrchidColor,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton.icon(
                    onPressed: () {
                      changeLoginState();
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyApp(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.logout_outlined,
                      color: MyColors.whiteColor,
                    ),
                    label: Text(
                      MyTexts.logout,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: MyColors.whiteColor,
                      ),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              const Tasks(
                number: 1,
              ),
              const Tasks(
                number: 2,
              ),
              const Tasks(
                number: 3,
              ),
              const Tasks(
                number: 4,
              ),
              const Tasks(
                number: 5,
              ),
              const Tasks(
                number: 6,
              ),
              const Tasks(
                number: 7,
              ),
              const Tasks(
                number: 8,
              ),
              const Tasks(
                number: 9,
              ),
              const Tasks(
                number: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
