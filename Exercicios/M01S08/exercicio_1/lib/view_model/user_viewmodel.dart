import 'package:exercicio_1/repository/user_repository.dart';

class UserViewmodel {
  final _userRepository = UserRepository();

  String getUserName() => _userRepository.getName();
}
