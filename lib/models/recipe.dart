import 'package:foodiez/models/category.dart';
import 'package:foodiez/models/ingredient.dart';
import 'package:json_annotation/json_annotation.dart';
part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
// User user = ;
  String name;
  String description;
  int category;
  // List<int> ingredients;

  Recipe({
    required this.name,
    required this.description,
    required this.category,
    // required this.ingredients
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
