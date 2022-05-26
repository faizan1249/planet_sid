import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/app_views/home_page.dart';
import 'package:plant_sid_app/app_views/shopping_cart.dart';
import 'package:plant_sid_app/app_views/favourtires.dart';
import 'package:plant_sid_app/app_views/my_account_settings.dart';
class BottomBar extends StatefulWidget {

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
int currentIndex=0;

final Screentabs=[
  HomePage(),
  ShoppingCart(),
  Favourites(),
  MyAccount(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.homeAlt),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cartShopping),label: "Shopping Cart"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart),label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.person),label: "My Account"),
        ],
        onTap: (index)
        {
          setState(() {
            currentIndex=index;
          });
        },
      ),
      body: Screentabs[currentIndex],



    );
  }
}
