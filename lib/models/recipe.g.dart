// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as int,
      // ingredients: (json['ingredients'] as List<int>).map((e) => e).toList(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      // 'ingredients': instance.ingredients,
    };
