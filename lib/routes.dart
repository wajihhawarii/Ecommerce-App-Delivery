import 'package:deliveryappn/view/screens/auth/loginpage.dart';
import 'package:deliveryappn/view/screens/forgetpassword/forgetpassword.dart';
import 'package:deliveryappn/view/screens/forgetpassword/resetpassword.dart';
import 'package:deliveryappn/view/screens/forgetpassword/success_resetpassword.dart';
import 'package:deliveryappn/view/screens/forgetpassword/verifycode.dart';
import 'package:deliveryappn/view/screens/home/homescreen.dart';
import 'package:deliveryappn/view/screens/orders/detailes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'core/constant/route.dart';

//,middlewares: [ MiddleWare()]
List<GetPage<dynamic>> routes = [
  GetPage(name: "/", page: () => const HomeScreen()),
  GetPage(name: AppRoute.loginpage, page: () => const LoginPage()),

  //VerfiyCodeSignUp//

  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(
      name: AppRoute.verfiyCoderesetpassword,
      page: () => const VerfiyCodeResetPassWord()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),

//orders
  // GetPage(name: AppRoute.orderspending, page: () => const PendingsOrders()),
  //GetPage(name: AppRoute.ordersarchive, page: () => const ArchiveOrders()),
  GetPage(name: AppRoute.orderdetailes, page: () => const OrderDetailes()),
  GetPage(name: AppRoute.orderdetailes, page: () => const OrderDetailes()),
];
