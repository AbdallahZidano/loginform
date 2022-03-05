import 'package:get/get.dart';
import 'package:screen_util_app/helper/colors.dart';
import 'package:screen_util_app/views/home.dart';
import 'package:screen_util_app/widgets/toast.dart';

class SignupController extends GetxController {
  signup(String name, String phone, String password, String conPassword) async {
    if (name == '' || phone == '' || password == '' || conPassword == '') {
      showToast('Please Enter your data', HelpColors.red);
    } else {
      showToast('Done the accunt created successfuly', HelpColors.green);
      await Future.delayed(Duration(seconds: 1), () => Get.offAll(HomePage()));
    }
  }
}
