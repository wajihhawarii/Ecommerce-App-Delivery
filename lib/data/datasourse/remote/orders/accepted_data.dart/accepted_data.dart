import 'package:deliveryappn/core/class/curd.dart';
import 'package:deliveryappn/linkapi.dart';

class OrderAcceptedData {
  Curd crud;
  OrderAcceptedData(this.crud);

  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.acceptedorder, {
      "deliveryid": deliveryid,
    });
    return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  }

  doneDelivery(String usersid, String deliveryid) async {
    var response = await crud.postData(AppLink.doneorder, {
      "usersid": usersid,
      "ordersid": deliveryid,
    });
    return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  }
}
