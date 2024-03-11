import 'package:deliveryappn/core/class/statuserequest.dart';
import 'package:deliveryappn/core/function/hundlingdata.dart';
import 'package:deliveryappn/core/services/myservices.dart';
import 'package:deliveryappn/data/datasourse/remote/orders/accepted_data.dart/accepted_data.dart';
import 'package:deliveryappn/data/model/ordersmodel.dart';
import 'package:get/get.dart';

abstract class AcepptedController extends GetxController {
  getOrders();
  doneDelivery(String usersid, String orderid);
  String printOrderType(String val);
  String printPaymentMethodes(String val);
  String printOrderStatus(String val);
}

class AcepptedControllerImp extends AcepptedController {
  StatusRequest? statusRequest;
  OrderAcceptedData accepptedData = OrderAcceptedData(Get.find());
  MyServices myServices = Get.find();

  List<OrdersModel> data = [];

  @override
  String printOrderType(String val) {
    if (val == "0") {
      return "delivery";
    }
    return "Recive";
  }

  @override
  String printPaymentMethodes(String val) {
    if (val == "0") {
      return "Cach on delivery";
    }
    return "Payment Card";
  }

  @override
  String printOrderStatus(String val) {
    if (val == "0") {
      return "Await Approval";
    } else if (val == "1") {
      return "The Order is Being prepare";
    } else if (val == "2") {
      return "On The Way";
    } else {
      return "Archive";
    }
  }

  @override
  getOrders() async {
    statusRequest = StatusRequest.loading;
    update();
    data.clear();
    var respons = await accepptedData
        .getData(myServices.sharedPreferences.getString("id")!);
    statusRequest =
        handlingData(respons); //عبارة عن دالة تتعامل مع القيمة المرجعة
    if (StatusRequest.success == statusRequest) {
      if (respons['status'] == "success") {
        List listdata = respons['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure; //لا يوجد بيانات
      }
    }
    update();
  }

  @override
  doneDelivery(String usersid, String orderid) async {
    statusRequest = StatusRequest.loading;
    update();
    data.clear();
    var respons = await accepptedData.doneDelivery(usersid, orderid);
    handlingData(respons); //عبارة عن دالة تتعامل مع القيمة المرجعة
    if (StatusRequest.success == statusRequest) {
      if (respons['status'] == "success") {
        Get.snackbar(
            "The Order Delivery was success", "The Order Delivery was success");
        getOrders();
      } else {
        statusRequest = StatusRequest.failure; //لا يوجد بيانات
      }
    }
    update();
  }

  int number = 0;

  refrehOrder() async {
    await getOrders();
  }

  @override
  void onInit() {
    number = 1;
    print("111111111111111111111111111111111");
    getOrders();
    super.onInit();
  }
}
