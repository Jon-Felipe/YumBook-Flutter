import 'package:flutter/material.dart';

// extras
import 'package:yumbook_flutter/models/recipe.dart';
import 'package:yumbook_flutter/widgets/recipe/recipe_card.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({
    super.key,
    required this.recipes,
    this.horizontalScroll = true,
  });

  final List<Recipe> recipes;
  final bool horizontalScroll;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: horizontalScroll ? 220 : double.infinity,
      child: ListView.builder(
        scrollDirection: horizontalScroll ? Axis.horizontal : Axis.vertical,
        itemCount: recipes.length,
        itemBuilder: (ctx, index) {
          final recipe = recipes[index];
          return RecipeCard(recipe: recipe, horizontalScroll: horizontalScroll);
        },
      ),
    );
  }
}
