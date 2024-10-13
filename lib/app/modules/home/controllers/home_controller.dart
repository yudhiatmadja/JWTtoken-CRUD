import 'package:get/get.dart';
import '../../../data/api/api_provider.dart';

class HomeController extends GetxController {
  var data = ''.obs;

  void fetchData(String token) async {
    try {
      final response = await ApiProvider().getData(token);
      data.value = response.data.toString();
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch data');
    }
  }
}
