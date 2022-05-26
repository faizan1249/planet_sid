import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AccountSettings extends StatefulWidget {
  static String id = '/account_settings';

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
        toolbarHeight: 60,
        backgroundColor: orangeYellow,
        elevation: 0,
      ),


      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: Text("Security",style: TextStyle(fontWeight: FontWeight.w600),),
                      leading: Icon(Icons.security,size:29,color: orangeYellow,),
                    ),
                    Divider(thickness: 0.5,color: Colors.grey,),
                    ListTile(
                      title: Text("Deactivate Account",style: TextStyle(fontWeight: FontWeight.w600),),
                      leading: Icon(Icons.cancel_outlined,size:29,color: orangeYellow,),
                    ),
                    Divider(thickness: 0.5,color: Colors.grey,),
                    ListTile(
                      title: Text("Delete Account",style: TextStyle(fontWeight: FontWeight.w600),),
                      leading: Icon(Icons.delete,size:29,color: orangeYellow,),
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

