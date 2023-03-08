import 'package:flutter/material.dart';

class Wrong_Answer extends StatefulWidget {
  const Wrong_Answer({Key? key}) : super(key: key);

  @override
  State<Wrong_Answer> createState() => _Wrong_AnswerState();
}

class _Wrong_AnswerState extends State<Wrong_Answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
     body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/wining.png",height: 150,width: 150,fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text("oops !",style: TextStyle(color: Color(0xffD4D4FF),fontSize: 25)),
            ),
            Text("Sorry You are",style: TextStyle(color: Color(0xffD4D4FF),fontSize: 25)),
            Text("the lose the",style: TextStyle(color: Color(0xffD4D4FF),fontSize: 25),),
            InkWell(
            onTap: () {
              setState(() {
                Navigator.pushReplacementNamed(context, "/");
              });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(height: 60, width: 120, child: Text("Try Again",style: TextStyle(color: Color(0xffD6D6D6),fontSize: 25),),),
              ),
            )
          ],
        ),
     ),
    );
  }
}
