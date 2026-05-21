import '../model/livro_model.dart';
import '../service/db.dart';

abstract interface class ILivroRepository {
  List<LivroModel> getLivros();
}

class LivroRepository implements ILivroRepository {
  final _db = DB();

  @override
  List<LivroModel> getLivros() {
    return _db.getData().map(LivroModel.fromMap).toList();
  }
}
