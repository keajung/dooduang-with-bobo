import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:final_project/pages/siemsee/siemsee.dart';
import 'package:flutter/material.dart';

class shake extends StatefulWidget {
  const shake({Key? key}) : super(key: key);

  @override
  _shakeState createState() => _shakeState();
}

class _shakeState extends State<shake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIAMESE'),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg/prm2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:100.0),
            child: Center(
              child: Image.asset(
                'assets/images/box22.png',
                width: 260,
                height: 260,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 135.0, right: 135.0,top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RaisedButton(
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
                                'assets/images/icon/scroll (1).png',
                                width: 60,
                                height: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 15.0),
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
                                        FadeAnimatedText('แกร่กๆ'),
                                        FadeAnimatedText('แกร่ก แกร่ก~'),
                                        //FadeAnimatedText('do it RIGHT NOW!!!'),
                                      ],
                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          content: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/box2.gif',
                                    width: 260,
                                    height: 260,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                            child: Text('กดตกลงเพื่อหยุดเขย่าและดูใบที่ได้'),
                          ),
                          ],
                          ),
                          actions: [
                            Row(
                              //crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
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
                                  padding: const EdgeInsets.only(left: 10),
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
                                          builder: (context) => siemsee(),
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
                            "เริ่มเขย่า",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
