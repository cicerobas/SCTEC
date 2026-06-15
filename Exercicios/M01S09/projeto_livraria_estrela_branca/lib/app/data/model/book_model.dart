class BookModel {
  final String title;
  final String author;
  final String imageUrl;

  BookModel({
    required this.title,
    required this.author,
    required this.imageUrl,
  });

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      title: map['title'],
      author: map['author'],
      imageUrl: map['imageUrl'],
    );
  }
}
