import '../repositories/livro_repository.dart';

class LivroViewmodel {
  final _livroRepository = LivroRepository();

  List<String> getLivros() {
    final listaLivros = _livroRepository.getLivros();
    return listaLivros.map((livro) => livro.toString()).toList();
  }
}
