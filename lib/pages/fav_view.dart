import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realstat_ai/models/item_model.dart';

import '../models/catigory_model.dart';
import '../widgets/appBar.dart';

class FavView extends StatefulWidget {
  const FavView({super.key});

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  late CatigoryModel selectedCatigory;
  List<ItemModel> items = [];
  List<CatigoryModel> catigories = <CatigoryModel>[
    CatigoryModel(id: 1, image: "assets/icons/land.png", name: "ارض"),
    CatigoryModel(id: 2, image: "assets/icons/department.png", name: "شقة"),
    CatigoryModel(id: 3, image: "assets/icons/home.png", name: "منزل"),
    CatigoryModel(id: 4, image: "assets/icons/build.png", name: "مبنى"),
  ];
  @override
  void initState() {
    selectedCatigory = catigories[0];
    items = [
      ItemModel(
          id: 1,
          catigoryId: 1,
          image: "assets/icons/item1.png",
          name: "مبنى طابقين للبيع ",
          price: 2200,
          description: "هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة",
          area: "٤ لبن",
          address: "شارع المحافظة - اب",
          rate: 4.5,
          date: DateTime.now(),
          isFav: true),
      ItemModel(
          id: 2,
          catigoryId: 1,
          image: "assets/icons/item1.png",
          name: "مبنى طابقين للبيع ",
          price: 100,
          description: "هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة",
          area: "٤ لبن",
          address: "شارع المحافظة - اب",
          rate: 4.5,
          date: DateTime.now(),
          isFav: false),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: CustomAppBar(
                    title: "المفضلة",
                    // action: Image.asset("assets/icons/share_icon.png"),
                    leading: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/icons/close_icon.png"))),
              ),
              Row(
                children: [
                  for (var cat in catigories)
                    CatidoryWidget(
                      onTap: (value) {
                        selectedCatigory = value;
                        setState(() {});
                      },
                      catigory: cat,
                    ),
                ],
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return items[index].catigoryId == selectedCatigory.id
                            ? ItemWidget(item: items[index])
                            : Container();
                      }))
            ],
          ),
        ),
      ),
    );
  }

  CatidoryWidget({required CatigoryModel catigory, required onTap}) {
    return Expanded(
        child: GestureDetector(
      onTap: () => onTap(catigory),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              catigory.id == selectedCatigory.id ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: catigory.id == selectedCatigory.id
              ? Border.all(color: Colors.blue, width: 1)
              : Border.all(color: Colors.black, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(catigory.image!),
            Text(catigory.name ?? ""),
          ],
        ),
      ),
    ));
  }

  ItemWidget({required ItemModel item}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(item.image!)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.price?.toString() ?? "",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w900),
                        ),
                        Icon(item.isFav
                            ? Icons.favorite
                            : Icons.favorite_outline)
                      ],
                    ),
                    Text(item.name ?? ""),
                    Text("المساحة ${item.area}"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" ${item.address}"),
                        Text(
                            " ${item.date!.day}/${item.date!.month}/${item.date!.year}"),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          textDirection: TextDirection.ltr,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xff0961F5),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    for (var i = 0; i < 5; i++)
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    Text("(5)")
                  ],
                ),
                Text(
                  "فرع إب، اليمنية",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Text(
                      "متابعة",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Text(
                      "الانتقال للعرض",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
