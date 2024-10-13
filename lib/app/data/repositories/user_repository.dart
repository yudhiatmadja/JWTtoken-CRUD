import '../api/api_provider.dart';
import '../models/user_model.dart';

class UserRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<UserModel> login(String email, String password) async {
    final response = await _apiProvider.login(email, password);
    return UserModel.fromJson(response.data);
  }
}
