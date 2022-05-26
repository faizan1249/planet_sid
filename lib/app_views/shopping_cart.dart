import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
class ShoppingCart extends StatefulWidget {


  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}
enum SingingCharacter { lafayette, jefferson }
class _ShoppingCartState extends State<ShoppingCart> {

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
                child:Text("Checkout",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400,color: CupertinoColors.black),),
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
                                      image: AssetImage("assets/images/girl1.PNG"),
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

                                AddRemoveButton(),
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
                                      image: AssetImage("assets/images/girl2.PNG"),
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

                                  child: AddRemoveButton(),
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
              SizedBox(height: 15,),
              ListTile(
                horizontalTitleGap: 10,
                title: Text("Shewrapara, Mirpur, Dhaka-1216 House no: 938 Road no: 9",style: TextStyle(color: blackColor,fontSize: 18),),
              //  trailing: Radio(value: null, groupValue: null, onChanged: (value){}),
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text("Subtotal",style: TextStyle(color: blackColor.withOpacity(0.5),fontSize: 16),),
                trailing: Text("\$160.00",style: TextStyle(color: blackColor,fontSize: 16),),
              ),

              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text("Discount",style: TextStyle(color: blackColor.withOpacity(0.5),fontSize: 16),),
                trailing: Text("5%",style: TextStyle(color: blackColor,fontSize: 16),),
              ),

              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text("Shipping",style: TextStyle(color: blackColor.withOpacity(0.5),fontSize: 16),),
                trailing: Text("\$10.00",style: TextStyle(color: blackColor,fontSize: 16),),
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text("Total",style: TextStyle(color: blackColor.withOpacity(0.9),fontSize: 16),),
                trailing: Text("\$162.00",style: TextStyle(color: blackColor,fontSize: 16),),
              ),
              Container(
                width: double.infinity,
                  child: CustomButton(buttonClr: orangeYellow, btnText: "BUY", textColor: whiteColor, elevationVal: false, onPressed: (){print("BUY");})),
            ],
          ),
        ),
      ),
    );
  }
}

class AddRemoveButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.05,
        color: Colors.black.withOpacity(0.03),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(icon: Icon(Icons.remove,size: 20,),onPressed: (){},color: Colors.black.withOpacity(0.5)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("1"),
            ),
            IconButton(icon: Icon(Icons.add,size: 20),onPressed: (){},color: Colors.black.withOpacity(0.5)),
          ],
        )
      );
  }
}
