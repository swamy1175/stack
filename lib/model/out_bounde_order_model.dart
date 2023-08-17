class OutBoundOrdersModel {
  late final String? documentno;
  late final String? movementdate;
  late final String? documenttype;
  late final String? shipto;
  late final String? sku;
  late final String? productname;
  late final String? lotno;
  late final String? serialno;
  late final String? expirydate;
  late final int? qty;

  OutBoundOrdersModel({
        required this.documentno,
        required this.movementdate,
        required this.documenttype,
        required this.shipto,
        required this.sku,
        required this.productname,
        required this.lotno,
        required this.serialno,
        required this.expirydate,
        required this.qty
  });

  OutBoundOrdersModel.fromJson(Map<String, dynamic> json) {
    documentno = json['documentno'];
    movementdate = json['movementdate'];
    documenttype = json['documenttype'];
    shipto = json['shipto'];
    sku = json['sku'];
    productname = json['productname'];
    lotno = json['lotno'];
    serialno = json['serialno'];
    expirydate = json['expirydate'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['documentno'] = this.documentno;
    data['movementdate'] = this.movementdate;
    data['documenttype'] = this.documenttype;
    data['shipto'] = this.shipto;
    data['sku'] = this.sku;
    data['productname'] = this.productname;
    data['lotno'] = this.lotno;
    data['serialno'] = this.serialno;
    data['expirydate'] = this.expirydate;
    data['qty'] = this.qty;
    return data;
  }
}