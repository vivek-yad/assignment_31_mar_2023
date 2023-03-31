import 'package:hive/hive.dart';

import '../../../domain/entity/dummy_task.dart';

part 'dummy_task_model.g.dart';

@HiveType(typeId: 2)
class DummyTaskModel {
  DummyTaskModel({
     this.taskId,
     this.title,
     this.thumbnail,
     this.shortDesc,
     this.payout,
     this.ctaShort,
     this.ctaLong,
     this.type,
     this.totalLead,
     this.isTrending,
     this.earned,
     this.status,
     this.isCompleted,
     this.brand,
     this.payoutAmt,
     this.payoutCurrency,
     this.ctaAction,
     this.customData,
  });

  @HiveType(typeId: 0)
  String ?taskId;
  @HiveType(typeId: 1)
  String? title;
  @HiveType(typeId: 2)
  String? thumbnail;
  @HiveType(typeId: 3)
  String? shortDesc;
  @HiveType(typeId: 4)
  String ?payout;
  @HiveType(typeId: 5)
  String ?ctaShort;
  @HiveType(typeId: 6)
  String ?ctaLong;
  @HiveType(typeId: 7)
  String ?type;
  @HiveType(typeId: 8)
  String ?totalLead;
  @HiveType(typeId: 9)
  bool ?isTrending;
  @HiveType(typeId: 10)
  String? earned;
  @HiveType(typeId: 11)
  String? status;
  @HiveType(typeId:12 )
  String? isCompleted;
  @HiveType(typeId: 13)
  BrandModel ?brand;
  @HiveType(typeId: 14)
  int ?payoutAmt;
  @HiveType(typeId: 15)
  String ?payoutCurrency;
  @HiveType(typeId: 16)
  String ?ctaAction;
  @HiveType(typeId: 17)
  CustomDataModel? customData;

  factory DummyTaskModel.fromJson(Map<String, dynamic> json) => DummyTaskModel(
    taskId: json["taskId"],
    title: json["title"],
    thumbnail: json["thumbnail"],
    shortDesc: json["shortDesc"],
    payout: json["payout"],
    ctaShort: json["ctaShort"],
    ctaLong: json["ctaLong"],
    type: json["type"],
    totalLead: json["total_lead"],
    isTrending: json["isTrending"],
    earned: json["earned"],
    status: json["status"],
    isCompleted: json["isCompleted"],
    brand: BrandModel.fromJson(json["brand"]),
    payoutAmt: json["payout_amt"],
    payoutCurrency: json["payout_currency"],
    ctaAction: json["ctaAction"],
    customData: CustomDataModel.fromJson(json["custom_data"]),
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "title": title,
    "thumbnail": thumbnail,
    "shortDesc": shortDesc,
    "payout": payout,
    "ctaShort": ctaShort,
    "ctaLong": ctaLong,
    "type": type,
    "total_lead": totalLead,
    "isTrending": isTrending,
    "earned": earned,
    "status": status,
    "isCompleted": isCompleted,
    "brand": brand?.toJson(),
    "payout_amt": payoutAmt,
    "payout_currency": payoutCurrency,
    "ctaAction": ctaAction,
    "custom_data": customData?.toJson(),
  };
}


class BrandModel {
  BrandModel({
     this.brandId,
     this.title,
     this.logo,
  });

  String ?brandId;
  String ?title;
  String ?logo;

  factory BrandModel.fromJson(Map<String, dynamic> json) => BrandModel(
    brandId: json["brandId"],
    title: json["title"],
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "brandId": brandId,
    "title": title,
    "logo": logo,
  };
}

class CustomDataModel {
  CustomDataModel({
     this.appRating,
     this.wallUrl,
     this.dominantColor,
  });

  String? appRating;
  String ?wallUrl;
  String ?dominantColor;

  factory CustomDataModel.fromJson(Map<String, dynamic> json) => CustomDataModel(
    appRating: json["app_rating"],
    wallUrl: json["wall_url"],
    dominantColor: json["dominant_color"],
  );

  Map<String, dynamic> toJson() => {
    "app_rating": appRating,
    "wall_url": wallUrl,
    "dominant_color": dominantColor,
  };
}
