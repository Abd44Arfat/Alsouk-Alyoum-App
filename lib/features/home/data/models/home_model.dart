import 'dart:convert';

class TimeResponse {
  final String message;
  final List<TimeModel> time;

  TimeResponse({required this.message, required this.time});

  // Convert JSON string to TimeResponse object
  factory TimeResponse.fromJson(String str) => TimeResponse.fromMap(json.decode(str));

  factory TimeResponse.fromMap(Map<String, dynamic> json) => TimeResponse(
        message: json["message"],
        time: List<TimeModel>.from(json["time"].map((x) => TimeModel.fromMap(x))),
      );
}

class TimeModel {
  final String id;
  final int timeId;
  final String name;
  final List<Currency> currencies;

  TimeModel({
    required this.id,
    required this.timeId,
    required this.name,
    required this.currencies,
  });

  // Convert JSON to TimeModel object
  factory TimeModel.fromMap(Map<String, dynamic> json) => TimeModel(
        id: json["_id"],
        timeId: json["id"],
        name: json["name"],
        currencies: List<Currency>.from(json["currencies"].map((x) => Currency.fromMap(x))),
      );
}

class Currency {
  final String id;
  final String name;
  final String image;
  final double rate;

  Currency({
    required this.id,
    required this.name,
    required this.image,
    required this.rate,
  });

  // Convert JSON to Currency object
  factory Currency.fromMap(Map<String, dynamic> json) => Currency(
        id: json["_id"],
        name: json["name"],
        image: json["image"],
        rate: (json["rate"] as num).toDouble(),
      );
}
