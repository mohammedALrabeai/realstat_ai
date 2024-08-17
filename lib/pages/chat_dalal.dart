import 'package:flutter/material.dart';

import '../widgets/appBar.dart';

class ChatDalalView extends StatefulWidget {
  const ChatDalalView({
    super.key,
  });

  @override
  State<ChatDalalView> createState() => _ChatDalalState();
}

class _ChatDalalState extends State<ChatDalalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBar(
                title: "دلال",
                action: Image.asset(
                  "assets/icons/music.png",
                  width: 70,
                ),
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset("assets/icons/close_icon.png"))),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  """الاسئلة الشائعة :

هل يوجد شقق للبيع في إب؟

هل يوجد مساحة ارض زراعية للبيع في إب؟

هل يوجد مبنى تجاري للبيع وسط المدينة؟""",
                  textAlign: TextAlign.center,
                ),
              ],
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    decoration: BoxDecoration(
                        color: Color(0xff0961F5), shape: BoxShape.circle),
                    child: Icon(
                      Icons.mic_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    "اكتب استفسارك هنا",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withAlpha(150)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                    "يمكن أن تصدر عن دلال بعض الأخطاء. لذلك يجب التحقق من المعلومات المهمة.",
                    textAlign: TextAlign.center),
              ),
            ),
            SizedBox(
              height: 18,
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
