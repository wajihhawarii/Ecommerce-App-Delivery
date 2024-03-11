import 'package:deliveryappn/core/class/curd.dart';
import 'package:deliveryappn/linkapi.dart';

class OrdersPendingsData {
  Curd crud;
  OrdersPendingsData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.pendingorder, {});
    return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  }

  approveOrder(String deliveryid, String userid, String orderid) async {
    var response = await crud.postData(AppLink.approveorder, {
      "deliveryid": deliveryid,
      "usersid": userid,
      "ordersid": orderid,
    });
    return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  }
}
