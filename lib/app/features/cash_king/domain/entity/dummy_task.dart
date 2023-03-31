class DummyTask {
  DummyTask({
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

  String ?taskId;
  String ?title;
  String? thumbnail;
  String ?shortDesc;
  String ?payout;
  String ?ctaShort;
  String ?ctaLong;
  String ?type;
  String? totalLead;
  bool ?isTrending;
  String ?earned;
  String ?status;
  String? isCompleted;
  Brand? brand;
  int ?payoutAmt;
  String ?payoutCurrency;
  String ?ctaAction;
  CustomData ?customData;

}

class Brand {
  Brand({
     this.brandId,
     this.title,
     this.logo,
  });

  String ?brandId;
  String ?title;
  String ?logo;

}

class CustomData {
  CustomData({
     this.appRating,
     this.wallUrl,
     this.dominantColor,
  });

  String ?appRating;
  String ?wallUrl;
  String ?dominantColor;


}