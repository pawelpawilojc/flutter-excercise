import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/utils/my_images.dart';
import 'package:listopad3/utils/my_texts.dart';


class SocialLogo extends StatelessWidget {
  const SocialLogo({super.key, required this.socialNetwork});
  final String socialNetwork;


  @override
  Widget build(BuildContext context) {
    var socialNetworkChoice="";
    if (socialNetwork=="google") socialNetworkChoice=MyImages.socialLogoGoogle;
    if (socialNetwork=="fb") socialNetworkChoice=MyImages.socialLogoFb;
    if (socialNetwork=="in") socialNetworkChoice=MyImages.socialLogoIn;
    if (socialNetwork=="x") socialNetworkChoice=MyImages.socialLogoX;
    return Container(
        width: 50,
        height: 50,

        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow:[
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4.0,
              color: Color(0x4D000000),
            ),
          ],
        ),

        child: Image.asset(socialNetworkChoice));

  }}