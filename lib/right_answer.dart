import 'package:flutter/material.dart';

class Right_Answer extends StatefulWidget {
  const Right_Answer({Key? key}) : super(key: key);

  @override
  State<Right_Answer> createState() => _Right_AnswerState();
}

List price = [1000, 2000, 5000, 10000, 20000, 25000, 50000, 100000, 250000, 500000 ];
// dynamic op = 0 ;

class _Right_AnswerState extends State<Right_Answer> {
  @override
  Widget build(BuildContext context) {

    dynamic op = ModalRoute.of(context)!.settings ;

    return Scaffold(backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/wining.png",height: 150,width: 150,fit: BoxFit.fill),
          Text("Your Answer Is Correct",style: TextStyle(color: Color(0xffC78640),fontSize: 25),),
          Text("You Won ${price[op]}",style: TextStyle(color: Colors.amberAccent,fontSize: 25),),
          Container(height: 60, width: 120, child: Text("Next",style: TextStyle(color: Color(0xffD6D6D6),fontSize: 25),),)
        ],
      ),
    );
  }
}
