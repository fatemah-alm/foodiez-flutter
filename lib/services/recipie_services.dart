import 'package:dio/dio.dart';
import 'package:foodiez/models/recipe.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'http://127.0.0.1:8000/';

  Future<List<Recipe>> getRecipies() async {
    List<Recipe> recipies = [];
    try {
      Response response = await _dio.get(_baseUrl + 'recipies');
      recipies = (response.data as List)
          .map((recipie) => Recipe.fromJson(recipie))
          .toList();
    } on DioError catch (error) {
      print(error);
    }
    return recipies;
  }
}
