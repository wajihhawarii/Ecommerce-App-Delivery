import 'package:deliveryappn/core/class/curd.dart';
import 'package:deliveryappn/linkapi.dart';

class OrdersDetailesData {
  Curd crud;
  OrdersDetailesData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.detailesorder, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
