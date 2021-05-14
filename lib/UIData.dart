import 'package:flutter/material.dart';

class UIData {
  static const String imageDir = 'assets/images';
  static const String bg = '$imageDir/nature.jpeg';
  static const String logo = '$imageDir/Logo.png';
  static const String icPhone = '$imageDir/_Icons_Phone.png';
  static const String icFb = '$imageDir/_Icons_Fb.png';
}

class FontsFamily {
  static const String lMetropolis = 'Metropolis';
}

class StylesText {
  static const fb = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: FontsFamily.lMetropolis,
  );

  static const phone = TextStyle(
    fontSize: 16,
    color: Colors.orange,
    fontWeight: FontWeight.bold,
    fontFamily: FontsFamily.lMetropolis,
  );
}

// class StylesBtn {
//   static const btnFb = ButtonStyle(
//     backgroundColor: MaterialStateProperty.all<Color>(Colors.accents),
//   );
// }
