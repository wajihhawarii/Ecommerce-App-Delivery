class AppLink {
  static const String server = "";

  static const String imagestatic = "";
  //++++++++++++++++++++++++++++++Image+++++++++++++++++++++++++++++++++++++++++++++++++++++++
  static const String imagecategories = "$imagestatic/categories";
  static const String imageitems = "$imagestatic/items";
  //============================================================================================

  static const String test = "$server/test.php";
  //=================================auth=====================================================
  static const String login = "$server/delivery_login.php";
  //=================================forgetpassword==========================================;
  static const String checkemail = "$server/delivery_checkemail1.php";
  static const String verifycode1forgetpassword =
      "$server/delivery_verifycode1.php";
  static const String resendverfiycode =
      "$server/delivery_resendverfiycode.php";
  static const String resetpassword1 = "$server/delivery_resetpassword1.php";

//=======================================orders==============================================
  static const String acceptedorder = "$server/delivery_orders_accepted.php";
  static const String approveorder = "$server/delivery_orders_approve.php";
  static const String pendingorder = "$server/delivery_orders_pendings.php";
  static const String archiveorder = "$server/delivery_orders_archive.php";
  static const String detailesorder = "$server/delivery_orders_detailes.php";
  static const String doneorder = "$server/delivery_orders_done.php";
}
