import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/utils/my_images.dart';
import 'package:listopad3/utils/my_texts.dart';

import 'package:listopad3/views/widgets/social_logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                      Navigator.pop(context);
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
              SocialLogo(socialNetwork: 'google'),
              SocialLogo(socialNetwork: 'fb'),
              SocialLogo(socialNetwork: 'x'),
              SocialLogo(socialNetwork: 'in'),
              SocialLogo(socialNetwork: 'google'),
              SocialLogo(socialNetwork: 'fb'),
              SocialLogo(socialNetwork: 'x'),
              SocialLogo(socialNetwork: 'in'),
              SocialLogo(socialNetwork: 'google'),
              SocialLogo(socialNetwork: 'fb'),
              SocialLogo(socialNetwork: 'x'),
              SocialLogo(socialNetwork: 'in'),
              SocialLogo(socialNetwork: 'google'),
              SocialLogo(socialNetwork: 'fb'),
              SocialLogo(socialNetwork: 'x'),
              SocialLogo(socialNetwork: 'in'),
              SocialLogo(socialNetwork: 'google'),
              SocialLogo(socialNetwork: 'fb'),
              SocialLogo(socialNetwork: 'x'),
              SocialLogo(socialNetwork: 'in'),
              SocialLogo(socialNetwork: 'google'),
              SocialLogo(socialNetwork: 'fb'),
              SocialLogo(socialNetwork: 'x'),
              SocialLogo(socialNetwork: 'in'),
            ],
          ),
        ),
      ),
    );
  }
}
