import 'package:json_annotation/json_annotation.dart';
part 'ingredient.g.dart';

class Ingredient {
  String name;
  Ingredient({required this.name});

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}
