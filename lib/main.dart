import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome_Page(),
    );
  }
}

class MyHome_Page extends StatefulWidget {
  const MyHome_Page({super.key});

  @override
  State<MyHome_Page> createState() => _MyHome_PageState();
}

class _MyHome_PageState extends State<MyHome_Page> {


  TextEditingController _textEditingController1=TextEditingController();
  TextEditingController _textEditingController2=TextEditingController();

      bool widgetVisible=false;
      String t1="";
      String t2="";
      String text="";

       void showWidget(){
         setState(() {
           widgetVisible =true;
            Random random= new Random();
            int randomNumber=random.nextInt(51)+50;
            text=randomNumber.toString();
         });
       }
       void hideWidget(){
           setState(() {
             widgetVisible =false;
              _textEditingController1.clear();
              _textEditingController2.clear();
           });
       }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Love Calculator"),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'images/aaaaaa.jpg',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade900,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: 'Your Lover Name',
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _textEditingController1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red.shade900,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade900,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0),

                        ),
                        hintText: 'Your Name',
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                        controller: _textEditingController2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink.shade400,
                            padding: EdgeInsets.all(16),
                            textStyle: TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            showWidget();
                          },
                          child: Text('Calculate'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink.shade400,
                            padding: EdgeInsets.all(16),
                            textStyle: TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            hideWidget();
                          },
                          child: Text('Try Again'),
                        ),
                      ],
                    ),
                    Visibility(
                      child: Stack(
                        children: [
                          Positioned(
                            child: Icon(
                              Icons.favorite,
                              size: 255,
                              color: Colors.red.shade900,
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 80,
                            child: Text(
                              text +'%',
                              style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
