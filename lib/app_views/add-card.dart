import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {

    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();

  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void NextField ({String? value, FocusNode? focusNode})
  {
    if(value!.length==1){
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add your Card"),
          backgroundColor: orangeYellow,
          elevation: 0,
          toolbarHeight: 80,

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/images/nbp-visa-card.png'),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Card Holder Name",style: cardInfoLabelsDecoration),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18,color: blackColor),
                              onChanged: (value){},
                              decoration: cardinforDecoration,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(children: [Text("Card Number",style: cardInfoLabelsDecoration,)],),
                      SizedBox(height: 6,),

                      //Card Number Field
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                              onChanged: (value)
                              {
                                setState(() {
                                  NextField(value: value,focusNode: pin2FocusNode);
                                });
                                print(value);

                              },
                              decoration:cardinforDecoration,
                              ),
                            ),
                          SizedBox(width: 14,),
                          Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                                onChanged: (value)
                                {
                                  NextField(value: value,focusNode: pin3FocusNode);
                                },
                                decoration:cardinforDecoration,
                              ),
                            ),
                          SizedBox(width: 14,),

                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                              onChanged: (value)
                              {
                                NextField(value: value,focusNode: pin4FocusNode);
                              },
                              decoration:cardinforDecoration,
                            ),
                          ),
                          SizedBox(width: 14,),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                              onChanged: (value){},
                              decoration:cardinforDecoration,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(children: [Text("Valid Thru",style: cardInfoLabelsDecoration,)],),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                              onChanged: (value){},
                              decoration:cardinforDecoration,
                            ),
                          ),
                          SizedBox(width: 14,),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                              onChanged: (value){},
                              decoration:cardinforDecoration,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(children: [Text("CVV/CVC",style: cardInfoLabelsDecoration,)],),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,color: Color(0xFF393939)),
                              onChanged: (value){},
                              decoration:cardinforDecoration,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            flex: 2,
                              child: Text("3 or 4 digit Code")),

                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                      child: CustomButton(buttonClr: orangeYellow, btnText: "ADD CARD NUMBER", textColor: whiteColor, elevationVal: false, onPressed: (){}))
                ],
              )
          ),
        ),
      ),
    );
  }
}
