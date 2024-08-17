import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appBar.dart';

class ShareAppView extends StatefulWidget {
  const ShareAppView({
    super.key,
  });

  @override
  State<ShareAppView> createState() => _ShareAppView();
}

class _ShareAppView extends State<ShareAppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBar(
                title: "مشاركة التطبيق",
                action: Image.asset("assets/icons/share_icon.png"),
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset("assets/icons/close_icon.png"))),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("شارك التطبيق عبر وسائل  التواصل الاجتماعي"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/icons/facebook.png"),
                      Image.asset("assets/icons/instat.png"),
                      Image.asset("assets/icons/whatsapp.png"),
                      Image.asset("assets/icons/telegram.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/icons/massenger.png"),
                      Image.asset("assets/icons/gmail.png"),
                      Image.asset("assets/icons/x.png"),
                      Image.asset("assets/icons/more.png"),
                    ],
                  ),
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "طلب المساعدة والدعم ؟",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withAlpha(150)),
                ),
                Icon(
                  Icons.help,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الشروط وسياسة الخصوصية؟",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withAlpha(150)),
                ),
                Icon(
                  Icons.live_help,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 48,
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
