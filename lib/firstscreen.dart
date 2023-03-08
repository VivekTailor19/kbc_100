import 'package:flutter/material.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: InkWell(onTap: (){
          Navigator.pushNamed(context, "start" );
        },
          child: Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey),
            alignment: Alignment.center,
            child: Text("Start",style: TextStyle(fontSize: 25,color: Colors.amber)),
          ),
        ),
      ),
    );
  }
}
