import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'chooseagain.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class DooDuang extends StatefulWidget {
  const DooDuang({Key? key}) : super(key: key);

  @override
  _DooDuangState createState() => _DooDuangState();
}

class _DooDuangState extends State<DooDuang> {
  final _controller = TextEditingController();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20, left: 100, right: 100, top: 100),
                  child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'[0-9]')),
                      FilteringTextInputFormatter.deny(RegExp(r'[\n]')),
                      FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
                      // FilteringTextInputFormatter.allow(
                    ],
                    textAlign: TextAlign.center,
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(1),
                      border: OutlineInputBorder(),
                      hintText: 'กรุณาใส่ชื่อของคุณ',
                    ),
                  )),
              Container(
                height: 50.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    _name = _controller.text;
                    if (!_name.isEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => selectMode(
                                  name: _name,
                                )),
                      );
                    } else {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/icon/book.png',
                                  width: 45,
                                  height: 45,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 15.0),
                                  child: Text('อุปส์!'),
                                ),
                              ],
                            ),
                            content: Text(
                                'คุณยังไม่ได้ใส่ชื่อ กรุณาใส่ชื่อแลัวกดใหม่อีกครั้ง'),
                            actions: [
                              RaisedButton(
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
                                },
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 40.0, minHeight: 20.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "ตกลง",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.9),
                      width: 3.5,
                    ),
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            /*Color.fromRGBO(135, 166, 245, 1),
                            Color.fromRGBO(255, 145, 98, 1)*/
                            Colors.orangeAccent,
                            Colors.orangeAccent
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 100.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "เริ่มทำนาย",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
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
