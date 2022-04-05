import 'package:flutter/material.dart';



class ReuseableProductsContainer extends StatefulWidget {
  ReuseableProductsContainer({
    required this.ProductTitle,
    required this.ImagePath,
    required this.ProductPrice,
  });
  String ProductTitle;
  String ImagePath;
  String ProductPrice;

  @override
  _ReuseableProductsContainerState createState() => _ReuseableProductsContainerState();
}

class _ReuseableProductsContainerState extends State<ReuseableProductsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
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
    );
  }
}

class CustomSearchTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}






class CategoriesItems extends StatelessWidget {
  CategoriesItems({
    required this.btnText,
    required this.btnColor,
    required this.ImagePath,
  });
  String btnText;
  Color btnColor;
  String ImagePath;

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
