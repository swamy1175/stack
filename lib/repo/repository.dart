import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:stack/model/b2c_order_model.dart';
import 'package:stack/model/orders_model.dart';
import 'package:stack/model/out_bounde_order_model.dart';

class HomeRepo{
  final Dio _dio;
  HomeRepo(this._dio);

  Future<OrdersModel> getOrderList() async {
    var response = await _dio.get('http://38.89.140.3:9999/dashboard?C_BPartner_ID=1004498');
    if(response.statusCode==200){
      print('response $response');
      return OrdersModel.fromJson(response.data);
    }else{
      throw Exception('cement not found');
    }

  }

  Future<OutBoundOrderModel> outBoundOrders() async {
    var response = await _dio.get('http://38.89.140.3:9999/dashboard_recentorders?C_BPartner_ID=1004498');
    if(response.statusCode==200){
      print('response11 $response');
      return OutBoundOrderModel.fromJson(jsonDecode(response.data));
    }else{
      throw Exception('cement not found');
    }

  }
  Future<ModelClass> b2cTable() async {
    var response = await _dio.get('http://38.89.140.3:9999/dashboard_b2c_lastoneyearorders?C_BPartner_ID=1004498');
    if(response.statusCode==200){
      print('response $response');
      return ModelClass.fromJson(response.data);
    }else{
      throw Exception('cement not found');
    }

  }
  Future<ModelClass> b2bTable() async {
    var response = await _dio.get('http://38.89.140.3:9999/dashboard_b2b_lastoneyearorders?C_BPartner_ID=1004498');
    if(response.statusCode==200){
      print('response $response');
      return ModelClass.fromJson(response.data);
    }else{
      throw Exception('cement not found');
    }

  }
  Future<ModelClass> returnTable() async {
    var response = await _dio.get('http://38.89.140.3:9999/dashboard_return_lastoneyearorders?C_BPartner_ID=1004498');
    if(response.statusCode==200){
      print('response $response');
      return ModelClass.fromJson(response.data);
    }else{
      throw Exception('cement not found');
    }

  }
  Future<ModelClass> exchangeTable() async {
    var response = await _dio.get('http://38.89.140.3:9999/dashboard_exchange_lastoneyearorders?C_BPartner_ID=1004498');
    if(response.statusCode==200){
      print('response $response');
      return ModelClass.fromJson(response.data);
    }else{
      throw Exception('cement not found');
    }

  }




}