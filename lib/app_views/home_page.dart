import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_views/widgets/text_fields.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/model/reuseableCode_model.dart';



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu,color: Colors.black,size: 35,),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Icon(FontAwesomeIcons.filter,color: Colors.black,),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(FontAwesomeIcons.circleInfo,color: Colors.black,),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                  child: CustomSearchTextField(),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0,10),
                    ),
                  ]
                ),
                ),

              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Categories",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                          Text("See All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.7)),),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                        child:Row(
                          children: [
                            CategoriesItems(btnText: "Brands",btnColor: Colors.yellow,ImagePath: "assets/images/hijab.png",),
                            CategoriesItems(btnText: "Brands",btnColor: Colors.yellow,ImagePath: "assets/images/hijab.png",),
                            CategoriesItems(btnText: "Brands",btnColor: Colors.yellow,ImagePath: "assets/images/hijab.png",),
                          ],
                        ),
                    ),

                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Featured",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: orangeYellow),),
                          Text("See All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.6)),),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: ReuseableProductsContainer(
                              ProductTitle: "Woman T-Shirt",
                              ProductPrice: "\$55.00",
                              ImagePath: "assets/images/whiteshirt.png",
                            ),
                          ),
                          Container(
                            child: ReuseableProductsContainer(
                              ProductTitle: "Woman T-Shirt",
                              ProductPrice: "\$55.00",
                              ImagePath: "assets/images/whiteshirt.png",
                            ),
                          ),
                          Container(
                            child: ReuseableProductsContainer(
                              ProductTitle: "Woman T-Shirt",
                              ProductPrice: "\$55.00",
                              ImagePath: "assets/images/whiteshirt.png",
                            ),
                          ),
                          Container(
                            child: ReuseableProductsContainer(
                              ProductTitle: "Woman T-Shirt",
                              ProductPrice: "\$55.00",
                              ImagePath: "assets/images/whiteshirt.png",
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Brand",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: orangeYellow),),
                          Text("See All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.6)),),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Card(
                                child: Container(
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/whiteshirt.png"),
                                        fit: BoxFit.cover,
                                        //colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.9), BlendMode.hardLight),
                                      )
                                  ),

                                ),
                              ),

                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Card(
                                child: Container(
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/whiteshirt.png"),
                                        fit: BoxFit.cover,
                                        // colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.9), BlendMode.hardLight),
                                      )
                                  ),

                                ),
                              ),

                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Card(
                                child: Container(
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/iamges/manTshirt.png"),
                                        fit: BoxFit.cover,
                                        //colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.9), BlendMode.hardLight),
                                      )
                                  ),

                                ),
                              ),
                        ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [Card(
                                child: Container(
                                  width: 140,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/whiteshirt.png"),
                                        fit: BoxFit.cover,
                                        //colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.9), BlendMode.hardLight),
                                      )
                                  ),

                                ),
                              ),
                                Text("adsa"),],
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              )





            ],
          ),
        ),
      ),
    );
  }
}


