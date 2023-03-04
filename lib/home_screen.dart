import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List color = [
  "Colors.lightBlueAccent",
  "Colors.pinkAccent",
  "Colors.amberAccent",
  "Colors.tealAccent",
  "Colors.redAccent",
  Colors.lightGreenAccent,
  Colors.orangeAccent,
  Colors.deepOrangeAccent,
  Colors.limeAccent
];

List<String> que = [
  '1. In the Film "OMG Oh My God" Kanji Bhai filed a case against whom for the damage of his shop due to an earthquake ? ',
  '2. What is the new name of the Hyderabad franchise that would replace Decan Charges in IPL6 ? ',
  '3. In India, under which Union Ministry does the \'Rajbhasha Vibhag\' function ? ',
  '4. According to a proverb, which is said to be \'the mother of invention\' ? ',
  '5. Which actress got married to Siddharth Roy Kapur in 2012 ? ',
  '6. To whom did Ravindranath Tagore dedicate his book \'visva parichay\' written on science ',
  '7. Which of these is a chemical element present in the periodic table ? ',
  '8. Which of these is not a work of Kalidas ? ',
  '9. According to the Devi, Bhagavata, from the tears of which god is the rudraksha tree believed to have been created ? ',
  '10. Which of these names means \'gold-like\' ? ',
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container(height: 250,color: Colors.lightBlueAccent)),
          Expanded(child: Container(height: 250,color: Colors.black)),
        ],
      )
    );
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
