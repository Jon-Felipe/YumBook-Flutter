enum Difficulty { easy, medium, hard }

class Recipe {
  const Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.servings,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.totalTimeMinutes,
    required this.ingredients,
    required this.instructions,
    this.averageRating,
    this.numberOfReviews,
    required this.difficulty,
    required this.category,
    required this.author,
  });

  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int servings;
  final int prepTimeMinutes;
  final int cookTimeMinutes;
  final int totalTimeMinutes;
  final List<String> ingredients;
  final List<String> instructions;
  final double? averageRating;
  final int? numberOfReviews;
  final Difficulty difficulty;
  final List<String> category;
  final String author;
}
