import 'package:flutter/cupertino.dart';
import 'package:plant_sid_app/app_views/splash_screen.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';

import '../model/slide_model.dart';
import 'package:flutter/material.dart';
import 'widgets/slider_item.dart';
import 'widgets/slide_dots.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'splash_screen.dart';




class MyOrders extends StatefulWidget {
  static String id = '/MyOrders';

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Icon(Icons.notification_add,color: Colors.black,),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 15,),
              Container(
                child:Text("My Orders",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400,color: CupertinoColors.black),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 140,

                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Row(
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/hijab.png"),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Woman t- shirt",style: TextStyle(fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Lotto.LTD",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.5)),),
                                SizedBox(height: 3,),
                                Text("\$34.00",style: TextStyle(color: orangeYellow,fontSize: 16),),
                                // SizedBox(height: 10,),
                                Container(
                                  width: 150,
                                  child: CustomOrderButton(
                                    btnText: "Order Again",
                                    buttonClr: orangeYellow,
                                    elevationVal: false,
                                    onPressed: (){},
                                    textColor: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 140,

                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Row(
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/hijab.png"),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Woman t- shirt",style: TextStyle(fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Lotto.LTD",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.5)),),
                                SizedBox(height: 3,),
                                Text("\$34.00",style: TextStyle(color: orangeYellow,fontSize: 16),),
                                // SizedBox(height: 10,),
                                Container(
                                  width: 150,

                                  child: CustomOrderButton(
                                    btnText: "Order Again",
                                    buttonClr: orangeYellow,
                                    elevationVal: false,
                                    onPressed: (){},
                                    textColor: whiteColor,
                                  ),
                                ),
                              ],


                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 140,

                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Row(
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/hijab.png"),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Woman t- shirt",style: TextStyle(fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Lotto.LTD",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.5)),),
                                SizedBox(height: 3,),
                                Text("\$34.00",style: TextStyle(color: orangeYellow,fontSize: 16),),
                                // SizedBox(height: 10,),
                                Container(
                                  width: 150,

                                  child: CustomOrderButton(
                                    btnText: "Order Again",
                                    buttonClr: orangeYellow,
                                    elevationVal: false,
                                    onPressed: (){},
                                    textColor: whiteColor,
                                  ),
                                ),
                              ],


                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 140,

                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Row(
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/hijab.png"),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Woman t- shirt",style: TextStyle(fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Lotto.LTD",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.5)),),
                                SizedBox(height: 3,),
                                Text("\$34.00",style: TextStyle(color: orangeYellow,fontSize: 16),),
                                // SizedBox(height: 10,),
                                Container(
                                  width: 150,

                                  child: CustomOrderButton(
                                    btnText: "Order Again",
                                    buttonClr: orangeYellow,
                                    elevationVal: false,
                                    onPressed: (){},
                                    textColor: whiteColor,
                                  ),
                                ),
                              ],


                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 140,

                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Row(
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/hijab.png"),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Woman t- shirt",style: TextStyle(fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Lotto.LTD",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.5)),),
                                SizedBox(height: 3,),
                                Text("\$34.00",style: TextStyle(color: orangeYellow,fontSize: 16),),
                                // SizedBox(height: 10,),
                                Container(
                                  width: 150,

                                  child: CustomOrderButton(
                                    btnText: "Order Again",
                                    buttonClr: orangeYellow,
                                    elevationVal: false,
                                    onPressed: (){},
                                    textColor: whiteColor,
                                  ),
                                ),
                              ],


                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 140,

                    child: Padding(
                      padding: EdgeInsets.all(11),
                      child: Row(
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/hijab.png"),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Woman t- shirt",style: TextStyle(fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Lotto.LTD",style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.5)),),
                                SizedBox(height: 3,),
                                Text("\$34.00",style: TextStyle(color: orangeYellow,fontSize: 16),),
                                // SizedBox(height: 10,),
                                Container(
                                  width: 150,

                                  child: CustomOrderButton(
                                    btnText: "Order Again",
                                    buttonClr: orangeYellow,
                                    elevationVal: false,
                                    onPressed: (){},
                                    textColor: whiteColor,
                                  ),
                                ),
                              ],


                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
