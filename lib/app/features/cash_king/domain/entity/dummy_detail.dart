class DummyDetail {
  DummyDetail({
    required this.eventId,
    required this.title,
    required this.description,
    required this.payout,
    required this.isCompleted,
    required this.payoutAmt,
    required this.payoutCurrency,
  });

  String eventId;
  String title;
  String description;
  String payout;
  bool isCompleted;
  int payoutAmt;
  String payoutCurrency;
}