import '../view_model/livro_viewmodel.dart';

void main() {
  final livroViewModel = LivroViewmodel();

  livroViewModel.getLivros().forEach(print);
}
