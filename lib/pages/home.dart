import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodiez/providers/recipe_provider.dart';
import 'package:foodiez/widgets/recipie_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("foodiez", style: TextStyle(color: Colors.redAccent)),
        ),
        body: FutureBuilder(
            future: Provider.of<RecipeProvider>(context, listen: false)
                .getRecipies(),
            builder: (context, dataSnapshot) {
              if (dataSnapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (dataSnapshot.error != null) {
                  return const Center(
                    child: Text('An error occurred'),
                  );
                } else {
                  return Consumer<RecipeProvider>(
                    builder: (context, recipeProvider, child) =>
                        GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height),
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: recipeProvider.recipies.length,
                            itemBuilder: (context, index) => RecipeCard(
                                name: recipeProvider.recipies[index].name,
                                image: recipeProvider.recipies[index].name)),
                  );
                }
              }
            }));
  }
}
