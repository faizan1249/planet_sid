import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';

class slideDots extends StatelessWidget {
  bool isActive;
  slideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive? 12:8,
      width: isActive? 12:8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive?
            orangeYellow:
            Colors.grey,
      ),


    );
  }
}
