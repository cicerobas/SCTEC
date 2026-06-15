import 'package:flutter/material.dart';
import 'package:projeto_livraria_estrela_branca/app/data/model/book_model.dart';
import 'package:projeto_livraria_estrela_branca/app/view/widgets/book_card_widget.dart';
import 'package:projeto_livraria_estrela_branca/app/view_model/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bookViewModel = BookViewModel();

  late List<BookModel> _bookList;

  @override
  void initState() {
    super.initState();
    _bookList = _bookViewModel.getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.star, color: Colors.white),
        title: const Text(
          "Livraria Estrela Branca",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: _bookList
                .map((book) => BookCardWidget(book: book))
                .toList(),
          ),
        ),
      ),
    );
  }
}
