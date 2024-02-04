import 'dart:ui';

class MyColors {
  static final blackColor = HexColor('#0E0E0E');
  static final whiteColor = HexColor('#FFFFFF');
  static final midnightOrchidColor = HexColor('#471AA0');
  static final enchantingAmethystColor = HexColor('#9747FF');
  static final grayColor = HexColor('#4D4D4D');
  static final goldenHuesColor = HexColor('#FFFC8D');
  static final emeraldBlissColor = HexColor('#7CFDAB');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    var hexColorModified = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColorModified.length == 6) {
      hexColorModified = 'FF$hexColorModified';
    }
    return int.parse(hexColorModified, radix: 16);
  }

  HexColor(String hexColor) : super(_getColorFromHex(hexColor));
}
