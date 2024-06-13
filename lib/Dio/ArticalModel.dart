class Artical{
  final String title;
  final String? description;

  Artical({required this.title, required this.description});
  factory Artical.fromJson(Map<String, dynamic> json) {
    return Artical(
      title: json['title'],
      description: json['description'],
    );  

  }
    }
