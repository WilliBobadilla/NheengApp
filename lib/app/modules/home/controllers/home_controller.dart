import 'package:get/get.dart';
import 'package:nheeng_app/app/data/services/data_msg_services.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  DataServices dataServices = DataServices(
      baseUrl:
          'https://raw.githubusercontent.com/WilliBobadilla/NheengApp/master/assets/files/');

  @override
  void onInit() {
    super.onInit();
    dataServices.getMessagesData(endpoint: "data.json");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
    print('el valor  $count');
  }
}
