class Artical {
  final String title;
  final String? description;
  final String? author;

  Artical({required this.title, this.description, this.author});

  factory Artical.fromJson(Map<String, dynamic> json) {
    return Artical(
      title: json['title'],
      author: json['author'],
      description: json['description'],
    );
  }
}
