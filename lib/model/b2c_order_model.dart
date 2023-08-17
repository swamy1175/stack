class ModelClass {

  ModelClass({
  required this.value1,
  required this.value2,
  required this.value3,
  required this.value4,
  required this.value5,
  required this.value6,
  required this.value7,
  required this.value8,
  required this.value9,
  required this.value10,
  required this.value11,
  required this.value12,
});
late final int value1;
late final int value2;
late final int value3;
late final int value4;
late final int value5;
late final int value6;
late final int value7;
late final int value8;
late final int value9;
late final int value10;
late final int value11;
late final int value12;

ModelClass.fromJson(Map<String, dynamic> json){
value1 = json['1'];
value2 = json['2'];
value3 = json['3'];
value4 = json['4'];
value5 = json['5'];
value6 = json['6'];
value7 = json['7'];
value8 = json['8'];
value9 = json['9'];
value10 = json['10'];
value11 = json['11'];
value12 = json['12'];
}

Map<String, dynamic> toJson() {
final _data = <String, dynamic>{};
_data['1'] = 1;
_data['2'] = 2;
_data['3'] = 3;
_data['4'] = 4;
_data['5'] = 5;
_data['6'] = 6;
_data['7'] = 7;
_data['8'] = 8;
_data['9'] = 9;
_data['10'] = 10;
_data['11'] = 11;
_data['12'] = 12;
return _data;
}
}