import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:getwidget/getwidget.dart';

class LoadingScreen extends StatefulWidget {
  static String id = '/pleaseWaitScreen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  bool isLoading=false;
  Duration duration = Duration(seconds: 3);

  void submit(){
    setState(() {
      isLoading = true;
    });
    Future.delayed(duration,(){
      setState(() {
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GFLoader(
              loaderColorOne: Colors.green,
              loaderColorTwo: Colors.amber,
              loaderColorThree: Colors.black,
              type: GFLoaderType.ios,
              size: 200,

            ),




        ],
      ),
    );
  }
  }



