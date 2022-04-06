import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:final_project/pages/siemsee/shake.dart';
import 'package:final_project/pages/siemsee/siemsee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/catagory.dart';
import 'card_tarot/cardCoin.dart';
import 'card_tarot/cardCup.dart';
import 'card_tarot/cardRandom.dart';
import 'card_tarot/cardSword.dart';
import 'card_tarot/cardTarot.dart';
import 'card_tarot/cardWood.dart';
import 'card_tarot/selectedCard.dart';

class selectMode extends StatefulWidget {
  final String name;
  const selectMode({Key? key,  required this.name}) : super(key: key);

  @override
  _selectModeState createState() => _selectModeState();
}

class _selectModeState extends State<selectMode> {
  late String _name;
  final List<catagory> cata = [
    catagory(
      image: 'card.png',
      title: 'ทำนายโดยใช้ไพ่ยิปซี',
      sometext: '50 บาท',
    ),
    catagory(
      image: 'ss3.png',
      title: 'ทำนายโดยใช้เซียมซี',
      sometext: '30 บาท',
    ),
    catagory(
      image: 'card.png',
      title: 'ดูสีเสื้อมงคล',
      sometext: '10 บาท',
    ),
  ];
  @override
  void initState() {
    super.initState();
    _name = widget.name;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text('MENU')),
        backgroundColor: Colors.orangeAccent,),
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg/prm2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Stack(
            children: [
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 50, right: 50,bottom: 50),
                    child: SizedBox(
                      //width: 400.0,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 26.0,
                          fontFamily: 'Bluemoon_SemesterOpen',
                          color: Colors.white,
                        ),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: false,

                          animatedTexts: [
                            TypewriterAnimatedText('ยินดีต้อนรับคุณ $_name \n..สู่สำนักหมอดูโบโบ้ 🐶'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 100, right: 100, top: 0),
                      itemCount: cata.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // if you need this
                              side: BorderSide(
                                color: Colors.black.withOpacity(0.9),
                                width:4,
                              ),

                            ),
                            // height: 50,
                            color: Colors.white,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: const EdgeInsets.all(8.0),
                            elevation: 5.0,
                            shadowColor: Colors.black.withOpacity(0.2),

                            child: InkWell(
                              onTap: () {
                                _handleClickItem(index);
                              },
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset('assets/images/${cata[index].image}',
                                      width: 80.0,
                                      height: 80.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  '\n${cata[index].title}' , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16)
                                                // style: GoogleFonts.prompt(fontSize: 20.0),
                                              ),
                                              Text(
                                                  '${cata[index].sometext}' , style: TextStyle( fontSize: 15)
                                                //style: GoogleFonts.prompt(fontSize: 15.0),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
  void _handleClickItem(int foodIndex) {
    if(foodIndex==0){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => randomCard()),
    );
    }else if(foodIndex==1){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => shake()),
      );
    }else{
     /* Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => cardCoin()),
    );*/
    }
    print('index : $foodIndex');
  }
}
