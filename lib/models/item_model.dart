
class ItemModel {
  int? id;
  int? catigoryId;
  String? name;
  String? image;
  double? price;
  double? rate;
  String? description;
  String? address;
  String? area;
  DateTime? date;
  bool isFav;

  ItemModel({
    this.id,
    this.catigoryId,
    this.name,
    this.image,
    this.price,
    this.rate,
    this.description,
    this.address,
    this.area,
    this.date,
    this.isFav = false,
  });
}