import 'package:foodiez/models/recipe.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category.g.dart';

class Category {
  String name;
  List<Recipe>? recipies;

  Category({required this.name, required List<Recipe> recipies});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
