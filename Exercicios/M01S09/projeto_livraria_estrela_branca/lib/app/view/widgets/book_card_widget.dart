import 'package:flutter/material.dart';
import 'package:projeto_livraria_estrela_branca/app/data/model/book_model.dart';
import 'package:projeto_livraria_estrela_branca/app/view/widgets/book_cover_placeholder.dart';

class BookCardWidget extends StatelessWidget {
  final BookModel book;
  const BookCardWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.widthOf(context) / 2 - 20,
      child: Card(
        elevation: 16,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 4,
            children: [
              ClipRRect(
                borderRadius: .circular(10),
                child: Image.asset(
                  height: 200,
                  width: double.infinity,
                  book.imageUrl,
                  fit: .cover,
                  errorBuilder: (context, error, stackTrace) =>
                      SizedBox(height: 200, child: BookCoverPlaceholder()),
                ),
              ),
              Text(
                book.title,
                overflow: .ellipsis,
                style: TextStyle(fontWeight: .bold, fontSize: 16),
              ),
              Text(book.author),
              FittedBox(
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: () => debugPrint(book.title),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey[850],
                        visualDensity: .compact,
                        padding: .symmetric(horizontal: 8),
                      ),
                      child: const Text("Ler Mais"),
                    ),
                    const SizedBox(width: 40),
                    FilledButton(
                      onPressed: () => debugPrint(book.title),
                      style: FilledButton.styleFrom(
                        visualDensity: .compact,
                        padding: .symmetric(horizontal: 8),
                        backgroundColor: Colors.black,
                      ),
                      child: const Text("Comprar"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
