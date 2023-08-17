
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:stack/model/b2c_order_model.dart';
import 'package:stack/model/orders_model.dart';
import 'package:stack/model/out_bounde_order_model.dart';
import 'package:stack/repo/repository.dart';

class HomeController extends GetxController{
  final HomeRepo homeRepo;
  HomeController(this.homeRepo);
  RxList<OrdersModel> orderList = <OrdersModel>[].obs;
  RxList<OutBoundOrdersModel> outBoundOrderList = <OutBoundOrdersModel>[].obs;
  RxList<ModelClass> b2bList = <ModelClass>[].obs;
  RxList<ModelClass> b2cList = <ModelClass>[].obs;
  RxList<ModelClass> returnList = <ModelClass>[].obs;
  RxList<ModelClass> exchangeList = <ModelClass>[].obs;
  RxBool isLoading = false.obs;
  @override
  void onInit() async {
    super.onInit();
    await getList();
    await getOutBoundOrders();
    await b2cTable();
    await b2bTable();
    await returnTable();
    await exchangeTable();

  }

  Future getList() async {
    isLoading.value=true;
    return await homeRepo.getOrderList().then((value){
      if(value!=null){
        orderList.add(value);
      }
      isLoading.value=false;
    });
  }
  Future getOutBoundOrders() async {
    isLoading.value=true;
    return await homeRepo.outBoundOrders().then((value){
      if(value!=null){
        outBoundOrderList.add(value);
      }
      isLoading.value=false;
    });
  }
  Future b2cTable() async {
    isLoading.value=true;
    return await homeRepo.b2cTable().then((value){
      if(value!=null){
        b2cList.add(value);
      }
      isLoading.value=false;
    });
  }
  Future b2bTable() async {
    isLoading.value=true;
    return await homeRepo.b2bTable().then((value){
      if(value!=null){
        b2bList.add(value);
      }
      isLoading.value=false;
    });
  }
  Future returnTable() async {
    isLoading.value=true;
    return await homeRepo.returnTable().then((value){
      if(value!=null){
        returnList.add(value);
      }
      isLoading.value=false;
    });
  }
  Future exchangeTable() async {
    isLoading.value=true;
    return await homeRepo.exchangeTable().then((value){
      if(value!=null){
        exchangeList.add(value);
      }
      isLoading.value=false;
    });
  }


}