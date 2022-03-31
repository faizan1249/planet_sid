import 'package:flutter/material.dart';
import 'app_colors.dart';



final splash_logo_container1 = BoxDecoration(
  color: orangeYellow,
  borderRadius: BorderRadius.circular(150.0),
);
final splash_logo_container2 = BoxDecoration(
  color: orangeYellowWithOpacity,
  borderRadius: BorderRadius.circular(150.0),
);

final buttonElevation = BoxDecoration(
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.blue.withOpacity(0.3),
      blurRadius: 100,
      offset: Offset(40, 0),
    ),
  ],
);

final welcomeTextStyle = TextStyle(
  fontSize: 48,
  //fontWeight: FontWeight.bold,
  color: orangeYellow,
);