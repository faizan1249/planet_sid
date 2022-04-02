import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_views/splash_screen.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String Description;



  Slide({
    required this.imageUrl,
    required this.title,
    required this.Description,


});
}


final sliderList = [
  Slide(imageUrl: 'assets/images/slider1.png',
      title: 'Delivery on the way',
      Description: 'Get your order by speed delivery',



  ),

  Slide(imageUrl: 'assets/images/slider1.png',
      title: 'Delivery Arrived',
      Description: 'Order is arrived at your Place',


  ),



];
