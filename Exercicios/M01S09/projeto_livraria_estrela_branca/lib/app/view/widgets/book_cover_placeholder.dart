import 'package:flutter/material.dart';

class BookCoverPlaceholder extends StatelessWidget {
  const BookCoverPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 5,
          children: [
            Icon(Icons.book, size: 40, color: Colors.grey),
            Text("Capa Indisponível", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
