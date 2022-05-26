import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_views/generalSettings.dart';

import 'my_orders.dart';



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
            height: MediaQuery.of(context).size.height*0.25,
            // width: double.infinity,
            // height: 200,
            color: orangeYellow,
            child: Column(
              children: <Widget>[
                 CircleAvatar(
                    radius: 53,
                    backgroundColor: whiteColor,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl1.PNG'),
                      radius: 50,
                      //child: Icon(FontAwesomeIcons.camera),
                    ),

                  ),

                SizedBox(height: 10,),
                Text("Angella ",style: TextStyle(fontSize: 23,color: whiteColor,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("angella@gmail.com",style: TextStyle(fontSize: 16,color: whiteColor,fontWeight: FontWeight.normal)),
              ],
            )
          ),

         Expanded(
           child: ListView(
             shrinkWrap: true,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   ListTile(
                     title: Text("My Orders",style: TextStyle(fontWeight: FontWeight.w600),),
                     leading: Icon(FontAwesomeIcons.bagShopping,color: orangeYellow,),
                     onTap: (){
                       Navigator.pushNamed(context, MyOrders.id);
                     },
                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     title: Text("Favourites",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(FontAwesomeIcons.heart,color: orangeYellow,),
                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     onTap: ()=>Navigator.pushNamed(context, GeneralSettings.id),
                     title: Text("Settings",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(Icons.settings,color: orangeYellow,),

                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     title: Text("My Cart",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(FontAwesomeIcons.cartShopping,color: orangeYellow,),
                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     title: Text("Rate Us",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(FontAwesomeIcons.star,color: orangeYellow,),
                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     title: Text("Refer a Friend",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(FontAwesomeIcons.userFriends,color: orangeYellow,),
                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     title: Text("Help",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(FontAwesomeIcons.questionCircle,color: orangeYellow,),
                   ),
                   Divider(thickness: 0.5,color: Colors.grey,),
                   ListTile(
                     title: Text("Exit",style: TextStyle(fontWeight: FontWeight.w600)),
                     leading: Icon(FontAwesomeIcons.signOutAlt,color: orangeYellow,),
                   ),




                 ],
               ),
             ],

           ),
         )
        ],
      ),
    );
  }
}
