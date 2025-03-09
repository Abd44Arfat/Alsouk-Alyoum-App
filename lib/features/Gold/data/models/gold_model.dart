import 'dart:convert';

class GoldResponse {
  final String message;
  final List<Gold> gold;

  GoldResponse({required this.message, required this.gold});

  // Convert JSON to GoldResponse
  factory GoldResponse.fromJson(String str) => GoldResponse.fromMap(json.decode(str));

  factory GoldResponse.fromMap(Map<String, dynamic> json) => GoldResponse(
        message: json["message"],
        gold: List<Gold>.from(json["gold"].map((x) => Gold.fromMap(x))),
      );
}

class Gold {
  final String id;
  final String name;
  final double purchasePrice;
  final double sellingPrice;

  Gold({required this.id, required this.name, required this.purchasePrice, required this.sellingPrice});

  // Convert JSON to Gold object
  factory Gold.fromMap(Map<String, dynamic> json) => Gold(
        id: json["_id"],
        name: json["name"],
        purchasePrice: (json["purchasePrice"] as num).toDouble(),
        sellingPrice: (json["sellingPrice"] as num).toDouble(),
      );


}
