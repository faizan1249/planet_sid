import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';

import 'account_settings_view.dart';
import 'change_address_view.dart';



class GeneralSettings extends StatefulWidget {
  static final id = '/generalSettings';

  @override
  _GeneralSettingsState createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
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
                      title: Text("Account",style: TextStyle(fontWeight: FontWeight.w600),),
                      leading: Icon(FontAwesomeIcons.person,color: orangeYellow,),
                      onTap: (){
                        Navigator.pushNamed(context, AccountSettings.id);
                      },
                    ),
                    Divider(thickness: 0.5,color: Colors.grey,),
                    ListTile(
                      title: Text("Notification",style: TextStyle(fontWeight: FontWeight.w600)),
                      leading: Icon(FontAwesomeIcons.solidBell,color: orangeYellow,),
                    ),
                    Divider(thickness: 0.5,color: Colors.grey,),
                    ListTile(
                      title: Text("Language",style: TextStyle(fontWeight: FontWeight.w600)),
                      leading: Icon(FontAwesomeIcons.earth,color: orangeYellow,),
                    ),
                    Divider(thickness: 0.5,color: Colors.grey,),
                    ListTile(
                      onTap: (){
                        Navigator.pushNamed(context, ChangeAddress.id);
                      },
                      title: Text("Change Address",style: TextStyle(fontWeight: FontWeight.w600)),
                      leading: Icon(FontAwesomeIcons.locationArrow,color: orangeYellow,),
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
