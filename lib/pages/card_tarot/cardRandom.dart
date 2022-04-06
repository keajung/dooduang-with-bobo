import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:final_project/pages/card_tarot/selectedCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class randomCard extends StatefulWidget {
  const randomCard({Key? key}) : super(key: key);
  @override
  _randomCardState createState() => _randomCardState();
}

class _randomCardState extends State<randomCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CARD TAROT')),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg/prm2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          /*Center(
            child:
          ),*/
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
              'assets/images/carddeck.png',
              width: 400,
              height: 400,
            ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0, right: 200.0),
                child: RaisedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon/magic-wand.png',
                                width: 45,
                                height: 45,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 5.0),
                                child: SizedBox(
                                  width: 150.0,
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    child: AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        FadeAnimatedText('โอมม'),
                                        FadeAnimatedText('มะลึกกึกกึ๋ย~'),
                                        //FadeAnimatedText('do it RIGHT NOW!!!'),
                                      ],
                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          content: Text(
                              'กรุณาตั้งจิตให้มั่นคงแล้วกดตกลงเพื่อดูไพ่ที่คุณเปิดได้'),
                          actions: [
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: RaisedButton(
                                color: Colors.deepOrange.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: Colors.black.withOpacity(0.9),
                                    width: 3,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 50.0, minHeight: 20.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "ยกเลิก",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: RaisedButton(
                                color: Colors.indigo.shade300,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: Colors.black.withOpacity(0.9),
                                    width: 3,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => pickCards(),
                                    ),
                                  );
                                },
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 40.0, minHeight: 20.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "ตกลง",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75.0),
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.9),
                      width: 3.5,
                    ),
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.orangeAccent,
                                Colors.orangeAccent,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 80.0, minHeight: 35.0),
                          alignment: Alignment.center,
                          child: Text(
                            "เริ่มทำนาย",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
