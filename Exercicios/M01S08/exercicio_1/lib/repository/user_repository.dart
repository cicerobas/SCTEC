import 'package:exercicio_1/data/db.dart';

final _db = DB();

class UserRepository {
  String getName() => _db.name;
}
