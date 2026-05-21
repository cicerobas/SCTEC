class LivroModel {
  String titulo;
  String autor;
  int anoPublicacao;
  String genero;
  int paginas;

  LivroModel({
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
    required this.paginas,
  });

  factory LivroModel.fromMap(Map<String, dynamic> map) {
    return LivroModel(
      titulo: map['titulo'],
      autor: map['autor'],
      anoPublicacao: map['anoPublicacao'],
      genero: map['genero'],
      paginas: map['paginas'],
    );
  }

  @override
  String toString() {
    return 'Livro => [Titulo: $titulo, Autor: $autor, Ano da Publicação: $anoPublicacao, Gênero: $genero, Páginas: $paginas]';
  }
}
