import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstat_ai/pages/chat_dalal.dart';

import 'pages/fav_view.dart';
import 'pages/land_for_rent.dart';
import 'pages/share_app.dart';

class ListPages extends StatelessWidget {
  const ListPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Pages"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatDalalView()));
            },
            child: Text("Chat dalal"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShareAppView()));
            },
            child: Text("Shar App"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavView()));
            },
            child: Text("Favorite Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LandForRentView()));
            },
            child: Text("Land For Rent Screen"),
          ),
        ],
      ),
    );
  }
}
