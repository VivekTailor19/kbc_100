import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List color = [
  Colors.lightBlueAccent,
  Colors.pinkAccent,
  Colors.amberAccent,
  Colors.tealAccent,
  Colors.redAccent,
  Colors.lightGreenAccent,
  Colors.orangeAccent,
  Colors.deepOrangeAccent,
  Colors.limeAccent,
  Colors.white,
];

List que = [
  '1. The reign of which of the following reigns was known as golden age for Mathura school of art ?',
  '2. What symbol represents birth of Gautama Buddha ?',
  '3. According to Sri Lankan chronicle Mahavamasa, Mauryan Emperor Ashoka converted to Buddhism by ?',
  '4. Which of the following subjects are dealt in by Kalpa Sutras ? ',
  '5. Who overthrew Saka rulers from India ? ',
  '6. Which the following rulers is known as the ‘Napoleon of India ? ',
  '7. Who defeated the Saka king Rudrasimha III and annexed his kingdom ?',
  '8. As per the Hindu Philosophy, what is the number of articles under the restraints and practices (Yamas and Niyamas) ?',
  '9. Which among the following sites gives an evidence of maritime trade in harappan era ?',
  '10. What was the profession of Karmara in Vedic age ? ',
];
List optA = [
  "[A] Indo-Greeks",
  "[A] Bodh tree",
  "[A] Moggaliputa Tissa",
  "[A] Sacrifices",
  "[A] Gautami putra Satakarni",
  "[A] Samudragupta",
  "[A] Ramagupta",
  "[A] 5",
  "[A] Mohen-jo dero",
  "[A] Blacksmith",
];
List optB = [
  "[B] Sakas",
  "[B] Lotus",
  "[B] Tivara",
  "[B] Family ceremonies",
  "[B] Kanishka",
  "[B] Ashoka",
  "[B] Chandragupta II",
  "[B] 15",
  "[B] Lothal",
  "[B] Potter"
];
List optC = [
  "[C] Kushanas",
  "[C] Horse",
  "[C] Karuvaki",
  "[C] Varnas, Ashramas",
  "[C] Rudraraman",
  "[C] Chandragupta I",
  "[C] Kumargupta I",
  "[C] 20",
  "[C] Kalibangan",
  "[C] Ratha (Chariot ) Makers",
];
List optD = [
  "[D] Gupta",
  "[D] Wheel",
  "[D] Nigrodha",
  "[D] All of the above",
  "[D] Demetrius",
  "[D] Skandgupta",
  "[D] Samudragupta",
  "[D] 36",
  "[D] Harappa",
  "[D] Goldsmith",
];
List answer = [
  "C",
  "B",
  "D",
  "D",
  "A",
  "A",
  "B",
  "C",
  "B",
  "A",
];

List userans = [];

int i = 0;
int count = 0;
int press = 0;

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                  height: 250,
                  color: color[i],
                  alignment: Alignment.center,
                  child: Text("${que[i]}",
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center),
                )),
              Expanded(
                  child: Container(
                      height: 250,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {
                                      running("A");
                                    },
                                    child: optButton(optA[i])),
                                InkWell(
                                    onTap: () {
                                      running("B");
                                    },
                                    child: optButton(optB[i])),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {
                                      running("C");
                                    },
                                    child: optButton(optC[i])),
                                InkWell(
                                    onTap: () {
                                      running("D");
                                    },
                                    child: optButton(optD[i])),
                              ],
                            ),
                          ),

                        ],
                      ))),
            ],
          ),
        ));
  }

  Widget optButton(String data) {
    return Container(
      height: 60,
      width: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xffCBE4DE), borderRadius: BorderRadius.circular(10)),
      child: Text(
        "$data",
        style: TextStyle(fontSize: 20, color: Colors.blueAccent),
      ),
    );
  }

  void running(String opt)
  {
    setState(() {
      if (i < que.length) {
        userans.add(opt);
      }
      {
        if (userans[i] == answer[i]) {
          Navigator.pushNamed(context, "right", arguments: i);
          print(
              " i = $i    userans[i] = ${userans[i]}      answer[i] = ${answer[i]}");
          if (i < que.length - 1) {
            i++;
          }
        }
        else
        {
          Navigator.pushNamed(context, "wrong");
          i=0;
        }
      }

      print(userans);

    });
  }
}

/*

Color
Question
Answer
Options

check True or False
True to Next
False to Result


* */

// Visibility(
//   visible: userans.length == que.length,
//   child: InkWell(
//   onTap: (){
//     setState(() {
//       print("User answer ${userans}");
//       print("Answer      ${answer}");
//       for(int j = 0 ; j < answer.length ; j++)
//       {
//         if( userans[j] == answer[j] )
//         {
//           count++;
//         }
//       }
//       press++;
//       print("Count = = ${count}");
//     });
//
//   },
//     child: Container(
//       height: 50,
//       width: 200,
//       color: Colors.deepPurple,
//       alignment: Alignment.center,
//       child: Text(
//         "Result",
//         style:
//             TextStyle(fontSize: 30, color: Colors.white),
//       ),
//     ),
//   ),
// ),
//
// Visibility(
//   visible: press>0 ? true :false,
//     child: Text("${count} /10 ",style: TextStyle(fontSize: 20,color: Colors.red),)),
