import 'package:get/get.dart';
import '../../../data/repositories/user_repository.dart';

class AuthController extends GetxController {
  final UserRepository _userRepository = UserRepository();

  var email = ''.obs;
  var password = ''.obs;
  var token = ''.obs;

  void login() async {
    try {
      final user = await _userRepository.login(email.value, password.value);
      token.value = user.token;
      Get.offNamed('/home');
    } catch (e) {
      Get.snackbar('Error', 'Login failed');
    }
  }
}
