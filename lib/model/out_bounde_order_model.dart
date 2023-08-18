class OutBoundOrderModel {
  OutBoundOrderModel({
    required this.data,
  });
  late final List<OutBoundData> data;

  OutBoundOrderModel.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e)=>OutBoundData.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class OutBoundData {
  OutBoundData({
    required this.ProductSKU,
    required this.DateTrx,
    required this.ProductName,
    required this.Qty,
    required this.DocumentType,
    required this.ShipTo,
    required this.DateOrdered,
  });
  late final String ProductSKU;
  late final String DateTrx;
  late final String ProductName;
  late final int Qty;
  late final String DocumentType;
  late final String ShipTo;
  late final String DateOrdered;

  OutBoundData.fromJson(Map<String, dynamic> json){
    ProductSKU = json['ProductSKU'] as String;
    DateTrx = json['DateTrx'] as String;
    ProductName = json['ProductName'] as String;
    Qty = json['Qty'];
    DocumentType = json['DocumentType'] as String;
    ShipTo = json['ShipTo'] as String;
    DateOrdered = json['DateOrdered'] as String;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ProductSKU'] = ProductSKU;
    _data['DateTrx'] = DateTrx;
    _data['ProductName'] = ProductName;
    _data['Qty'] = Qty;
    _data['DocumentType'] = DocumentType;
    _data['ShipTo'] = ShipTo;
    _data['DateOrdered'] = DateOrdered;
    return _data;
  }
}