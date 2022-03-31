import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  final Color buttonClr;
  String btnText;
  final Color textColor;
  bool elevationVal;
  Function() onPressed;
  IconData? btnIcon;

  CustomButton(
      {
        required this.buttonClr,
        required this.btnText,
        required this.textColor,
        required this.elevationVal,
        required this.onPressed,
        this.btnIcon,
      }
      );
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: 
            
        elevationVal?
        
        BoxDecoration(

          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 0.2,
              offset: Offset(0, 10),
            ),
          ],
        ):
        
        BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.white.withOpacity(0),
              blurRadius: 0,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        
        
        child: TextButton(

            style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
                shadowColor: MaterialStateProperty.resolveWith((states) => Colors.blue),
                backgroundColor: MaterialStateProperty.resolveWith((states) => buttonClr),
                shape:MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(btnText,
                style: TextStyle(fontSize: 20,color: textColor),
              ),
            )
        ),


    );
  }
}



//------------------------------------------------------------------------------------


class LoginLogoButton extends StatelessWidget {

  final Color buttonClr;
  String btnText;
  final Color textColor;

  Function() onPressed;
  String imagePath;
  bool borderVal;
  LoginLogoButton(
      {
        required this.buttonClr,
        required this.btnText,
        required this.textColor,
        required this.onPressed,
        required this.imagePath,
        required this.borderVal,
      }
      );

  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: borderVal?BoxDecoration(
        border: Border.all(
          color: Colors.black,
          
        ),
        borderRadius: BorderRadius.circular(10.0)
      )
          :BoxDecoration(
          border: Border.all(
            color: Colors.transparent
          ),
      ),
      child: TextButton(

          style: ButtonStyle(

              splashFactory: NoSplash.splashFactory,
              shadowColor: MaterialStateProperty.resolveWith((states) => Colors.blue),
              backgroundColor: MaterialStateProperty.resolveWith((states) => buttonClr),
              shape:MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))
          ),
          onPressed: onPressed,
          child: Padding(

            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(imagePath,)),
                Text(btnText,
                  style: TextStyle(fontSize: 20,color: textColor),
                ),
              ],
            ),
          )
      ),
    );
  }
}

