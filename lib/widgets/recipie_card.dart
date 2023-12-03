import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecipeCard extends StatelessWidget {
  String name;
  String image;
  RecipeCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Image.asset(image), Text(name)],
      ),
    );
  }
}
