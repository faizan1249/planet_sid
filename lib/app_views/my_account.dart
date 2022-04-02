import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';



class MyAccount extends StatefulWidget {


  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeYellow,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Icon(FontAwesomeIcons.edit),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.3,
            // width: double.infinity,
            // height: 200,
            color: orangeYellow,
            child: Column(
              children: <Widget>[
                 CircleAvatar(
                    radius: 53,
                    backgroundColor: whiteColor,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/hijab.png'),
                      radius: 50,
                      //child: Icon(FontAwesomeIcons.camera),
                    ),

                  ),

                SizedBox(height: 10,),
                Text("Manish Chutake",style: TextStyle(fontSize: 23,color: whiteColor,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("manishuxuid@gmail.com",style: TextStyle(fontSize: 16,color: whiteColor,fontWeight: FontWeight.normal)),
              ],
            )
          ),
         SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 child: Text("asdasda"),
               ),
               Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),Container(
                 child: Text("asdasda"),
               ),
               // Column(
               //   crossAxisAlignment: CrossAxisAlignment.stretch,
               //   children: [
               //
               //   ],
               // ),
             ],

           ),
         )
        ],
      ),
    );
  }
}
