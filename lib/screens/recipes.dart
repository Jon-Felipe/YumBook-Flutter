import 'package:flutter/material.dart';
import 'package:yumbook_flutter/models/recipe.dart';
import 'package:yumbook_flutter/widgets/recipe/recipe_list.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key, required this.title, required this.recipes});

  final String title;
  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RecipeList(recipes: recipes, horizontalScroll: false),
        ),
      ),
    );
  }
}
