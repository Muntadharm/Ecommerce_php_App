import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      // if not userName
      return "46".tr;
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      // if not email
      return "47".tr;
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      // if not phone
      return "48".tr;
    }
  }
  if (val.isEmpty) {
    return "49".tr;
  }
  if (val.length < min) {
    return "${"50".tr}$min";
  }

  if (val.length > max) {
    return "${"51".tr}$max";
  }
}
