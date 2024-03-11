import 'package:deliveryappn/core/class/curd.dart';
import 'package:deliveryappn/linkapi.dart';

class OrderArchiveData {
  Curd crud;
  OrderArchiveData(this.crud);

  getData(String orderid) async {
    var response = await crud.postData(AppLink.archiveorder, {"id": orderid});
    return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  }

  // ratting(String ordersid, String rating, String comment) async {
  //   var response = await crud.postData(AppLink.ratings, {
  //     "id": ordersid,
  //     "rating": rating,
  //     "comment": comment,
  //   });
  //   return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  // }
}
