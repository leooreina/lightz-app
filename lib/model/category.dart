import 'dart:convert';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromMap(x)));

class Category {
  final int id;
  final String title;
  final String image;

  const Category({
    required this.id,
    required this.title,
    required this.image,
  });

  factory Category.fromMap(Map<String, dynamic> json) =>
      Category(id: json['id'], title: json['title'], image: json['image']);
}