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



final AddressFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(20),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1, color: Color(0xFFCBCBCB)),
    borderRadius: BorderRadius.circular(15),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 2, color: Color(0xFF9C9C9C)),
    borderRadius: BorderRadius.circular(15),
  ),


);




final otpFormDecoraton = InputDecoration(
  fillColor: textFieldFillColor,
  filled: true,
  contentPadding:
  EdgeInsets.symmetric(vertical: 15,),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: Colors.transparent),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: Colors.transparent),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(color: Colors.transparent),
  ),
);

final cardinforDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 7,horizontal: 15),
  fillColor: Colors.transparent,
  filled: true,
  border: OutlineInputBorder(),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1, color: Color(0xFFCBCBCB)),
    borderRadius: BorderRadius.circular(4),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 2, color: Color(0xFF9C9C9C)),
    borderRadius: BorderRadius.circular(4),
  ),
);

final cardInfoLabelsDecoration = TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.w400);