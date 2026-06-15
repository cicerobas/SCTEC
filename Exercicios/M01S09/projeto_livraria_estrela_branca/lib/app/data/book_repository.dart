import 'package:projeto_livraria_estrela_branca/app/data/book_service.dart';
import 'package:projeto_livraria_estrela_branca/app/data/model/book_model.dart';

class BookRepository {
  final _bookService = BookService();

  List<BookModel> getBooks() => _bookService
      .getBooks()
      .map((bookMap) => BookModel.fromMap(bookMap))
      .toList();
}
