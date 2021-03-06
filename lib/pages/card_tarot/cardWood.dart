import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../model/cardTarotsWood.dart';

class tarotsWood extends StatefulWidget {
  final position;
  const tarotsWood({Key? key,required this.position}) : super(key: key);

  @override
  _tarotsWoodState createState() => _tarotsWoodState();
}

class _tarotsWoodState extends State<tarotsWood> {
  late int _position;
  void initState() {
    super.initState();
    _position = widget.position;
    print('position $_position');
  }
  final List<cardTarotsWood> cardsWood = [
    cardTarotsWood(
      meaning:
      'หมายถึงการเริ่มต้นใหม่ การได้รับโอกาสด้านการงานใหม่ มีสิ่งใหม่ๆเข้ามา ไพ่ใบนี้จึงเหมือนจุดเริ่มต้นของสิ่งที่ร้อนแรง การงาน ความต้องการใหม่ๆ',
      love:
      'ในด้านความรัก ใบนี้ค่อนข้างจะดีทีเดียว หมายถึงการเริ่มต้นใหม่ ความรู้สึกใหม่ๆ ที่ทำให้เรารู้สึกดี หากถามว่าอีกฝ่ายรู้สึกยังไงแล้วไพ่ใบนี้แทนเค้า หรือไพ่ใบนี้ขึ้นแทนตัวเราในสถานการณ์ก็หมายถึงอารมณ์ที่รุนแรง เต็มไปด้วยพลัง ความชอบ ความรัก ที่พร้อมจะพุ่งชน พุ่งจีบ ทีเดียว  ',
      image: '1.png',
      name: 'ACE OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ไพ่ใบนี้หมายถึง การวางแผนอนาคต การมองถึงอนาคต ถึงจุดที่ต้องตัดสินใจเลือกเดิน',
      love:
      'ในมุมมองความรัก ไพ่ใบนี้ก็หมายถึง ความรักที่กำลังไปในทางที่ดี มีโอกาสในการพัฒนาที่ดี ไพ่ใบนี้นอกจากกรณีดังกล่าว ก็ยังมีกรณีที่หมายถึงการที่หมายถึงว่าเรายังไม่คิดที่จะมองใคร เรายังมองไปยังโลกกว้าง มองไปยังอนาคตที่ยังมาไม่ถึง คิดว่าน่าจะมีโอกาสในความรักที่ดีกว่านี้',
      image: '2.png',
      name: 'TWO OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ไพ่นี้หมายถึง การส่งสิ่งที่เราสร้างขึ้นมาออกไป เช่น การส่งงาน ส่งของ ส่งความรัก การรอผลลัพธ์ที่ส่งออกไปกลับมา โดยที่ก็ไม่รู้ว่าผลลัพธ์จะดีหรือไม่',
      love:
      'ในด้านความรัก ไพ่ใบนี้ก็ความหมายไม่ต่างกัน ในความสัมพันธ์ที่เป็นคนรักกันแล้ว ก็อาจจะอยู่ในช่วงห่างไกลกันต้องมีคนที่รอคอยคนนึงเสมอ',
      image: '3.png',
      name: 'THREE OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ไพ่ของไม้ทั้งสี่ไม้เปรียบเสมือนความมั่นคง บ้านที่สร้างได้สำเร็จ และมีชายหญิงคู่หนึ่งที่เฉลิมฉลองกัน ในงานเลี้ยงที่คนมาร่วมงานมากมาย เป็นดั่งงานแต่งงานที่มีความสุข ไพ่ใบนี้จึงหมายถึง การเฉลิมฉลอง งานแต่งงาน ความรัก เพื่อน ครอบครัว',
      love:
      'โดยปกติเป็นไพ่ที่ดีในด้านความรัก หมายถึงความรักที่สุกงอม มีการเฉลิมฉลอง อบอุ่น รวมถึงความรักนี้ ในมุมมองครอบครัว เพื่อน ก็ยอมรับ มีความสุขกันอย่างดี',
      image: '4.png',
      name: 'FOUR OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'เด็ก 5 คน กำลังทำการต่อเติมไม้ที่ถือไว้ ทุกคนพยายามที่จะปักไม้ของตัวเองลงและประกอบเข้าด้วยกันให้ลงตัว แต่ก็ยังยุ่งเหยิงเพราะแต่ละคนไม่เข้าใจกัน ไพ่ใบนี้จึงหมายถึง การถกเถียง การประชุม วางแผน ความขัดแย้ง แข่งขัน',
      love:
      'หมายถึงการขัดแย้งในแนวคิด หรืออะไรต่างๆ ที่จะวางแผนด้วยกัน มีความขัดแย้งกันไม่ลงตัว ต่างฝ่ายต่างไม่ยอมกัน ก็เลยอาจจะทะเลาะกันบ้าง',
      image: '5.png',
      name: 'FIVE  OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ชายนายทหารผู้ได้รับชัยชนะ เดินทางกลับมายังเมือง โดยมีผู้คนมาร่วมสรรเสริญและแสดงความยินดีอยู่รอบข้าง ไพ่ใบนี้จึงหมายถึง การมีความคืบหน้า การได้รับชัยชนะ การจบปัญหาด้วยดี มีความมั่นใจ เชื่อมั่นในตัวเอง',
      love:
      'ความรักกับไพ่ใบนี้นั้น ก็เรียกได้ว่าเป็นความรักที่ดี ความรักมีความก้าวหน้า ความสัมพันธ์มีความเดินหน้าไปในทิศทางที่ดีขึ้น ถ้าหากความสัมพันธ์มีปัญหามาก่อนก็จะได้รับการแก้ไขไปอย่างดี',
      image: '6.png',
      name: 'SIX OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ความหมายไพ่ใบนี้จึงหมายถึงการ รักษาตำแหน่ง รักษาสิ่งที่เราคิดว่าถูก รักษาสิทธิ์ที่เป็นของเรา ต่อสู้กับปัญหาต่างๆที่เข้ามา จากสิ่งที่เราอาจจะยังไม่รู้ชัดว่าคืออะไร บางทีเราอาจจะคิดมากไปเองหรือกังวลเกินไป',
      love:
      'ความสัมพันธ์เหมือนมีอุปสรรคเข้ามา หรือแม้แต่ปัญหาภายใน เรื่องการที่อีกฝ่ายทำร้ายจิตใจคุณ ให้คุณต้องต่อสู้ฝ่าฟันเพื่อรักษาความสัมพันธ์ให้คงอยู่ต่อไป และอาจหมายถึงการต่อสู้เพื่อรักษาตัวตนของตัวเองในความสัมพันธ์ได้ด้วย',
      image: '7.png',
      name: 'SEVEN OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ไพ่ใบนี้แปลได้ว่า จะมีการเปลี่ยนแปลง มีเรื่องเข้ามากระทันหัน รวดเร็ว จนคุณตั้งตัวไม่ทัน ส่วนใหญ่จะแปลไปในทางที่ดี',
      love:
      'ความสัมพันธ์เป็นไปอย่างรวดเร็ว ความรักพัฒนาไปอย่างรวดเร็ว มีความคืบหน้า มีเรื่องเซอร์ไพรซ์ หากเป็นโสดก็มีความเป็นไปได้ถึงการที่มีคนเข้ามาทำให้ชอบ ทำให้รักอย่างรวดเร็ว ไม่ทันตั้งตัว',
      image: '8.png',
      name: 'EIGHT OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ทุกครั้งที่ผิดพลาดล้มเหลว ชายในไพ่ใบนี้จะได้รับบาดแผลแต่ก็ทำให้เค้าได้ประสบการณ์ความรู้ ไพ่ใบนี้จึงแปลได้ถึง การทำงานที่มีประสบการณ์ เพราะที่ผ่านมาอาจจะหนัก และล้มเหลวมาแล้ว จนทำให้รู้ถึงปัญหาและวิธีแก้ไขได้',
      love:
      'ความสัมพันธ์ที่เรียกได้ว่า เจ็บมาเยอะ จนทำให้มีประสบการณ์มามาก และทำให้มีรู้วิธีในการแก้ไขปัญหาความสัมพันธ์ต่างๆ ที่เข้ามา ได้อย่างดี ไพ่ใบนี้ในมุมมองหลักๆจึงเป็นความหมายที่ดี ที่สามารถดำเนินความสัมพันธ์ต่อไปได้ เพราะเรามีประสบการณ์ที่จะจัดการ',
      image: '9.png',
      name: 'NINE OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ไพ่ใบนี้แปลได้เลยว่าหมายถึง งานที่ครบ งานที่เต็ม ความปรารถนาความต้องการที่เต็มเปี่ยม แต่จาก ไพ่จะเห็นว่ามันยังไม่ถึงจุดสิ้นสุด ถึงแม้จะใกล้แล้วก็ตาม ดังนั้นสิ่งที่เราทำคือการ แบกรับ มันไว้ เพื่อให้ไปถึงจุดหมายที่เราตั้งเป้าไว้ อาจหมายถึงงานที่หนัก ภาระในจิตใจที่หนักอึ้ง แต่เราก็ยังคงเดินหน้าต่อไปยังเป้าหมายได้',
      love:
      'ถึงไพ่หมายเลข 10 จะหมายถึงการครบ จบสมบูรณ์ แต่ไพ่ใบนี้นั้นยังไม่ค่อยสมบูรณ์เท่าไหร่ ไพ่ใบนี้จะหมายถึงความสัมพันธ์ที่หนักอึ้ง อาจเป็นภาระด้านอื่นๆ เช่น เรื่องงาน เงิน ครอบครัว ที่อาจไม่เห็นด้วย',
      image: '10.png',
      name: 'TEN OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ไพ่ใบนี้จึงหมายถึงการเปลี่ยนแปลงหรือการเริ่มพัฒนา เริ่มต้น สิ่งใหม่ๆที่มีแรงผลักดัน มีแรงบันดาลใจ เช่น การผจญภัย การทำงานใหม่ทีท้าทายขึ้น และเราก็พร้อมที่จะลุยไป',
      love:
      'ความรักความสัมพันธ์ของไพ่ใบนี้ มักแปลถึงการเริ่มต้น การเปลี่ยนแปลง ความต้องการในการพัฒนาความสัมพันธ์ เป็นการเริ่มความรักที่ค่อนข้างจะรุนแรง หรือวัยรุ่นซะหน่อย คือมีความรักที่มาก เป็นความรักที่เหมือนการผจญภัย มีเรื่องน่าตื่นเต้นหวือหวาตลอดเวลา',
      image: '11.png',
      name: 'PAGE OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'ความหมายคือ การเดินหน้า ลุยทำในสิ่งที่ใจต้องการ จนบางทีอาจจะเป็นพวกรีบร้อน ทำอะไรโดยไม่คิดให้รอบคอบได้ อาจจะหมายถึงการที่ตะลุยทำงานอย่างมุ่งมั่น ตั้งใจ ด้วยพลังงานที่เปี่ยมล้น แต่ต้องระวังเรื่องความสะเพร่าด้วยเช่นกัน',
      love:
      'ไพ่ใบนี้หมายถึงความสัมพันธ์ที่เดินหน้าไปด้วยความรวดเร็ว ไปเร็วด้วยความต้องการ มีพลังพร้อมจะฝ่าฟันอุปสรรค มองในแง่ดีก็ถือว่าดี แต่เรื่องความรัก บางทีก็อาจจะขาดความรอบคอบไปซะหน่อย จนอาจจะทำให้ความสัมพันธ์ไม่ยืดยาวหรือยั่งยืนนัก',
      image: '12.png',
      name: 'KNIGHT OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'คนที่ได้ไพ่ใบนี้ (โดยเฉพาะผู้หญิง) เป็นคนที่มีความมั่นใจ สดใส มีความมุ่งมั่นสูง มีความฝัน ชอบปาร์ตี้สังสรรค์และทำงานเก่ง จู้จี้จุกจิก ถ้าหากได้ไพ่ใบนี้ขึ้นมา ก็อาจจะหมายถึงการที่จะได้พบ ผู้หญิงที่มีลักษณะแบบที่กล่าวมา เข้ามาในสถานการณ์ของคุณ',
      love:
      'ไพ่ราชินีไม้เป็นลักษณะของผู้หญิงที่มีสเน่ห์ มีความมุ่งมั่น ในการทำงาน ความฝัน และมีความเฟรนลี่ เพื่อนเยอะ ชอบสังคม ทำให้ดึงดูดคนเข้ามามากมาย แต่ถ้าโสดอยู่ ก็จะตอบได้ว่าผู้หญิงคนนี้ยังไม่คิดที่จะลงเอยกับใคร เพราะเธอค่อนข้างจะสามารถอยู่ตัวคนเดียวได้ พึ่งพาตัวเองได้',
      image: '13.png',
      name: 'QUEEN OF WANDS',
    ),
    cardTarotsWood(
      meaning:
      'คนที่ได้ไพ่ใบนี้จึงเป็นคนที่ค่อนข้างกระตือรือร้น มีแรงผลักดัน เพื่อให้ได้ในสิ่งที่ตัวเองต้องการ และเนื่องจากมีความเป็นผู้ใหญ่จากการเป็นราชา ไพ่ไม้เน้นไปที่เรื่องงาน ถ้าได้ใบนี้ก็เรียกได้ว่า อาจจะได้ทำงานเป็นหัวหน้า หรือเป็นคนที่เก่งในเรื่องงาน เป็นผู้นำในการทำงานได้อย่างดี',
      love:
      'ไพ่ใบนี้อาจจะเรียกได้ว่าเป็นความสัมพันธ์ที่มีพลังงาน มีแรงผลักดันในการพากันไปในเป้าหมายของความรักที่ต้องการได้  นอกจากนี้ยังหมายถึงความรักที่ใช้ความปรารถนาเป็นตัวนำพาไปได้ด้วย',
      image: '14.png',
      name: 'KING OF WANDS',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(''),
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
            child: null /* add child content here */,
          ),
          Center(
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front: Image.asset(
                'assets/images/cards/ไพ่ไม้/${cardsWood[_position].image}',
                width: 230,
                height: 400,
                fit: BoxFit.contain,

              ),
              back: Container(
                width: 230,
                height: 400,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/bg/prm2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${cardsWood[_position].name}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black), textAlign: TextAlign.center),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('ความหมายไพ่'
                            ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black), textAlign: TextAlign.start),
                      ),
                      Text('${cardsWood[_position].meaning}'
                          ,style: TextStyle(fontSize: 13,color: Colors.black)),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('ด้านความรัก'
                            ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black), textAlign: TextAlign.start),
                      ),
                      Text('${cardsWood[_position].love}'
                          ,style: TextStyle(fontSize: 13,color: Colors.black)),

                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
