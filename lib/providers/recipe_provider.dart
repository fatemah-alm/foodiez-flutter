import 'package:flutter/material.dart';
import 'package:foodiez/models/recipe.dart';
import 'package:foodiez/services/recipie_services.dart';

class RecipeProvider extends ChangeNotifier {
  List<Recipe> recipies = [];
  Future<void> getRecipies() async {
    recipies = await DioClient().getRecipies();
  }
}
