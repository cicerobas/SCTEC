import 'package:projeto_livraria_estrela_branca/app/data/book_repository.dart';
import 'package:projeto_livraria_estrela_branca/app/data/model/book_model.dart';

class BookViewModel {
  final _bookRepository = BookRepository();

  List<BookModel> getBooks() => _bookRepository.getBooks();
}
