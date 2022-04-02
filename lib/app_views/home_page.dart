import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_views/widgets/text_fields.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Product",
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      filled: true,
                      fillColor: Colors.white,

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
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
                            CategoriesItems(),
                            CategoriesItems(),
                            CategoriesItems(),
                            CategoriesItems(),
                            CategoriesItems(),
                            CategoriesItems(),
                            CategoriesItems(),
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
                                Text('\$55.00'),
                                Text("Woman T-Shirt"),
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
                                Text('\$34.00'),
                                Text("Man T-Shirt"),
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
                                Text("adsa"),],
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






class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(7.0),
        child: Card(
          child: Container(
            width: 130,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/hijab.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.9), BlendMode.hardLight),
              ) 
            ),
            child: Center(
              child: Text("Brands"),
            ),

          ),
        ),

    );
  }
}
