import 'package:deliveryappn/core/class/curd.dart';
import 'package:deliveryappn/linkapi.dart';

class CheackEmailData {
  Curd crud;
  CheackEmailData(this.crud);

  postData(String email) async {
    var response = await crud.postData(AppLink.checkemail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r); //لانها ترجع نوعين
  }
}
