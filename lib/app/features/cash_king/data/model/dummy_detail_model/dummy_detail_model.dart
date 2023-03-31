import 'package:hive/hive.dart';

part 'dummy_detail_model.g.dart';

@HiveType(typeId: 1)
class DummyDetailModel {
  DummyDetailModel({
    this.eventId,
    this.title,
    this.description,
    this.payout,
    this.isCompleted,
    this.payoutAmt,
    this.payoutCurrency,
  });

  @HiveType(typeId: 0)
  String? eventId;
  @HiveType(typeId: 1)
  String? title;
  @HiveType(typeId: 2)
  String? description;
  @HiveType(typeId: 3)
  String? payout;
  @HiveType(typeId: 4)
  bool? isCompleted;
  @HiveType(typeId: 5)
  int? payoutAmt;
  @HiveType(typeId: 6)
  String? payoutCurrency;

  factory DummyDetailModel.fromJson(Map<String, dynamic> json) =>
      DummyDetailModel(
        eventId: json["eventId"],
        title: json["title"],
        description: json["description"],
        payout: json["payout"],
        isCompleted: json["isCompleted"],
        payoutAmt: json["payout_amt"],
        payoutCurrency: json["payout_currency"],
      );

  Map<String, dynamic> toJson() => {
        "eventId": eventId,
        "title": title,
        "description": description,
        "payout": payout,
        "isCompleted": isCompleted,
        "payout_amt": payoutAmt,
        "payout_currency": payoutCurrency,
      };
}
