class PaymentIntentResult {
  String status;
  String paymentIntentId;
  String paymentMethodId;

  PaymentIntentResult(
      {this.status, this.paymentIntentId, this.paymentMethodId});

  factory PaymentIntentResult.fromJson(Map<dynamic, dynamic> json) {
    return PaymentIntentResult(
      status: json['status'],
      paymentIntentId: json['paymentIntentId'],
      paymentMethodId: json['paymentMethodId'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.paymentIntentId != null)
      data['paymentIntentId'] = this.paymentIntentId;
    if (this.status != null) data['status'] = this.status;
    if (this.paymentMethodId != null)
      data['paymentMethodId'] = this.paymentMethodId;
    return data;
  }
}
