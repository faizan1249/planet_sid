import 'package:plant_sid_app/app_views/splash_screen.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';

import '../model/slide_model.dart';
import 'package:flutter/material.dart';
import 'widgets/slider_item.dart';
import 'widgets/slide_dots.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'splash_screen.dart';



class BtnList {
  BuildContext context;
  Function() onTap;
  BtnList({
    required this.context,
    required this.onTap,
  });
  nextPage(){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>splash_screen()));
  }


  final btnList = <Widget>[
    CustomButton(
      buttonClr: orangeYellow,
      btnText: "Next",
      elevationVal: false,
      onPressed: (){

      },
      textColor: whiteColor,
    ),


    CustomButton(
      buttonClr: orangeYellow,
      btnText: "Get Started",
      elevationVal: false,
      onPressed: (){},
      textColor: whiteColor,
    ),

  ];




}









class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  int currentPage = 0;
  final PageController _Pagecontroller=PageController(
    initialPage: 0,
  );
  @override

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _Pagecontroller.dispose();
  }
  _onPageChanged(int index){
    setState(() {
      currentPage=index;
      print(currentPage);
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        // margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              child:Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    onPageChanged: _onPageChanged,
                    scrollDirection: Axis.horizontal,
                    controller: _Pagecontroller,
                    itemCount: sliderList.length,
                    itemBuilder: (context,index)=>SlideItem(index: index),
                  ),

                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[

                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for(int i=0;i<sliderList.length;i++)
                              if(i==currentPage)
                                slideDots(true)
                              else
                                slideDots(false)

                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),

                      ),
                    ),

                  ],
                )
              ],
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 60,left: 90,right: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(orangeYellow),

                            ),
                            onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>splash_screen()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text("Get Started",style: TextStyle(
                                color: whiteColor,fontSize: 18,
                              ),),
                            ),

                          )
                        ],
                      ),
                    ],
                  ),
            ),
          ],

        ),
      ),
    );
  }
}
