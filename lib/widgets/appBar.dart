import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomAppBar(
    {required String title,  Widget? action, required Widget leading}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
        gradient:
            LinearGradient(

                begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff354B9F), Color(0xff131B39)]),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading,
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w900),
        ),
       if(action != null) action
      ],
    ),
  );
}
