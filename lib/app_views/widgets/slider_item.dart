import 'package:flutter/material.dart';
import '../../model/slide_model.dart';


class SlideItem extends StatelessWidget {

  final int index;
  SlideItem({
    required this.index,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(

            width: 300,
            height: 300,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(sliderList[index].imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),

        SizedBox(height: 20,),
        Text(sliderList[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'calibri',
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(sliderList[index].Description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black.withOpacity(0.4),
              // fontWeight: FontWeight.bold,
              fontFamily: 'calibri',
            ),
          ),
        ),





      ],
    );
  }
}
