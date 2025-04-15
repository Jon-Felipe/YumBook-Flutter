import 'package:yumbook_flutter/models/category.dart';
import 'package:yumbook_flutter/models/recipe.dart';
import 'package:yumbook_flutter/models/author.dart';

final List<Category> categories = [
  Category(
    id: 'c1',
    name: 'Breakfast',
    description: "Start your day with a healthy and delicious breakfast.",
  ),
  Category(
    id: 'c2',
    name: 'Lunch',
    description: "Quick and easy lunch recipes to fuel your day.",
  ),
  Category(
    id: 'c3',
    name: 'Dinner',
    description: "Hearty and satisfying dinner ideas for the whole family.",
  ),
  Category(
    id: 'c4',
    name: 'Dessert',
    description: "Sweet treats and indulgent desserts to end your meal.",
  ),
  Category(
    id: 'c5',
    name: 'Snacks',
    description: "Quick and tasty snacks to enjoy throughout the day.",
  ),
  Category(
    id: 'c6',
    name: 'Gluten-Free',
    description: "Delicious recipes for those who avoid gluten.",
  ),
  Category(
    id: 'c6',
    name: 'Vegetarian',
    description: "Tasty vegetarian meals for a balanced diet.",
  ),
  Category(
    id: 'c6',
    name: 'Quick & Easy',
    description: "Simple and fast recipes for busy individuals.",
  ),
  Category(
    id: 'c7',
    name: 'Budget Meals',
    description: "Affordable recipes that don’t break the bank.",
  ),
];

final List<Recipe> recipes = [
  Recipe(
    id: '1',
    name: 'Classic Pancakes',
    description:
        'Fluffy, golden-brown pancakes perfect for a weekend breakfast.',
    imageUrl: '',
    servings: 4,
    prepTimeMinutes: 10,
    cookTimeMinutes: 15,
    totalTimeMinutes: 25,
    ingredients: [
      '1½ cups all-purpose flour',
      '3½ tsp baking powder',
      '1 tsp salt',
      '1 tbsp sugar',
      '1¼ cups milk',
      '1 egg',
      '3 tbsp butter, melted',
    ],
    instructions: [
      'Sift dry ingredients.',
      'Add wet ingredients and mix.',
      'Cook on griddle until golden.',
    ],
    averageRating: 4.6,
    numberOfReviews: 230,
    difficulty: Difficulty.easy,
    category: ['c1', 'c8'],
    author: 'Chef Sarah',
  ),
  Recipe(
    id: '2',
    name: 'Spaghetti Carbonara',
    description:
        'A creamy, savory Roman pasta dish with pancetta and parmesan.',
    imageUrl: '',
    servings: 2,
    prepTimeMinutes: 10,
    cookTimeMinutes: 20,
    totalTimeMinutes: 30,
    ingredients: [
      '200g spaghetti',
      '100g pancetta',
      '2 large eggs',
      '50g parmesan cheese',
      '2 cloves garlic',
      'Salt and pepper',
    ],
    instructions: [
      'Boil pasta.',
      'Cook pancetta and garlic.',
      'Combine eggs and cheese.',
      'Mix all with hot pasta.',
    ],
    averageRating: 4.8,
    numberOfReviews: 310,
    difficulty: Difficulty.medium,
    category: ['c3'],
    author: 'Chef Marco',
  ),
  Recipe(
    id: '3',
    name: 'Chicken Tikka Masala',
    description: 'Tender chicken in a creamy, spiced tomato sauce.',
    imageUrl: '',
    servings: 4,
    prepTimeMinutes: 20,
    cookTimeMinutes: 30,
    totalTimeMinutes: 50,
    ingredients: [
      '500g chicken breast',
      '1 cup yogurt',
      '2 tbsp garam masala',
      '1 onion',
      '2 garlic cloves',
      '1 tsp ginger',
      '1 can tomato puree',
      '1 cup heavy cream',
    ],
    instructions: [
      'Marinate chicken in yogurt/spices.',
      'Cook chicken and set aside.',
      'Make sauce and simmer chicken.',
    ],
    averageRating: 4.7,
    numberOfReviews: 170,
    difficulty: Difficulty.medium,
    category: ['c3'],
    author: 'Chef Priya',
  ),
  Recipe(
    id: '4',
    name: 'Greek Salad',
    description:
        'A refreshing salad with cucumbers, tomatoes, olives, and feta.',
    imageUrl: '',
    servings: 4,
    prepTimeMinutes: 10,
    cookTimeMinutes: 0,
    totalTimeMinutes: 10,
    ingredients: [
      '2 cucumbers',
      '4 tomatoes',
      '1 red onion',
      '1/2 cup olives',
      '100g feta cheese',
      'Olive oil, lemon juice, oregano',
    ],
    instructions: ['Chop veggies.', 'Toss with dressing and feta.'],
    averageRating: 4.5,
    numberOfReviews: 95,
    difficulty: Difficulty.easy,
    category: ['c2', 'c7', 'c8'],
    author: 'Chef Eleni',
  ),
  Recipe(
    id: '5',
    name: 'Beef Wellington',
    description: 'A show-stopping dish of beef tenderloin wrapped in pastry.',
    imageUrl: '',
    servings: 6,
    prepTimeMinutes: 40,
    cookTimeMinutes: 45,
    totalTimeMinutes: 85,
    ingredients: [
      '1kg beef tenderloin',
      '500g puff pastry',
      '200g mushrooms',
      '12 slices prosciutto',
      '1 egg yolk',
      'Salt and pepper',
      'Dijon mustard',
    ],
    instructions: [
      'Sear beef and chill.',
      'Make duxelles and wrap with prosciutto.',
      'Wrap in pastry, bake until golden.',
    ],
    averageRating: 4.9,
    numberOfReviews: 88,
    difficulty: Difficulty.hard,
    category: ['c3'],
    author: 'Chef Gordon',
  ),
  Recipe(
    id: '6',
    name: 'Avocado Toast',
    description: 'Quick and healthy avocado toast with a twist of lime.',
    imageUrl: '',
    servings: 2,
    prepTimeMinutes: 5,
    cookTimeMinutes: 5,
    totalTimeMinutes: 10,
    ingredients: [
      '2 slices sourdough',
      '1 avocado',
      '1 tsp lime juice',
      'Chili flakes',
      'Salt and pepper',
    ],
    instructions: [
      'Toast bread.',
      'Mash avocado with lime.',
      'Spread and top with chili flakes.',
    ],
    averageRating: 4.3,
    numberOfReviews: 120,
    difficulty: Difficulty.easy,
    category: ['c1', 'c7', 'c8'],
    author: 'Chef Ava',
  ),
  Recipe(
    id: '7',
    name: 'Tom Yum Soup',
    description: 'A spicy and sour Thai soup with shrimp and lemongrass.',
    imageUrl: '',
    servings: 4,
    prepTimeMinutes: 15,
    cookTimeMinutes: 20,
    totalTimeMinutes: 35,
    ingredients: [
      '8 shrimp',
      '3 cups chicken broth',
      '2 stalks lemongrass',
      '3 kaffir lime leaves',
      '2 tbsp fish sauce',
      '1 chili pepper',
      'Mushrooms, lime juice',
    ],
    instructions: [
      'Simmer broth with aromatics.',
      'Add mushrooms and chili.',
      'Add shrimp, finish with lime.',
    ],
    averageRating: 4.6,
    numberOfReviews: 140,
    difficulty: Difficulty.medium,
    category: ['c2', 'c6'],
    author: 'Chef Arun',
  ),
  Recipe(
    id: '8',
    name: 'Sushi Rolls',
    description: 'Make your own sushi rolls with rice, nori, and fillings.',
    imageUrl: '',
    servings: 2,
    prepTimeMinutes: 30,
    cookTimeMinutes: 10,
    totalTimeMinutes: 40,
    ingredients: [
      '1 cup sushi rice',
      '2 sheets nori',
      'Cucumber, avocado, cooked shrimp',
      'Rice vinegar',
      'Soy sauce, wasabi',
    ],
    instructions: [
      'Cook rice and season.',
      'Lay nori, add rice and fillings.',
      'Roll tightly and slice.',
    ],
    averageRating: 4.4,
    numberOfReviews: 90,
    difficulty: Difficulty.medium,
    category: ['c3', 'c6'],
    author: 'Chef Aiko',
  ),
  Recipe(
    id: '9',
    name: 'Chocolate Lava Cake',
    description: 'A rich dessert with a molten chocolate center.',
    imageUrl: '',
    servings: 4,
    prepTimeMinutes: 15,
    cookTimeMinutes: 10,
    totalTimeMinutes: 25,
    ingredients: [
      '100g dark chocolate',
      '100g butter',
      '2 eggs',
      '2 egg yolks',
      '50g sugar',
      '30g flour',
    ],
    instructions: [
      'Melt chocolate and butter.',
      'Mix with eggs and sugar.',
      'Bake in greased molds.',
    ],
    averageRating: 4.9,
    numberOfReviews: 160,
    difficulty: Difficulty.medium,
    category: ['c4', 'c6'],
    author: 'Chef Lila',
  ),
  Recipe(
    id: '10',
    name: 'Ratatouille',
    description: 'A hearty French vegetable stew with tomato and herbs.',
    imageUrl: '',
    servings: 4,
    prepTimeMinutes: 25,
    cookTimeMinutes: 35,
    totalTimeMinutes: 60,
    ingredients: [
      '1 zucchini',
      '1 eggplant',
      '1 bell pepper',
      '1 onion',
      '2 tomatoes',
      'Olive oil, garlic, thyme',
    ],
    instructions: ['Sauté vegetables.', 'Simmer with tomatoes and herbs.'],
    averageRating: 4.5,
    numberOfReviews: 105,
    difficulty: Difficulty.medium,
    category: ['c3', 'c6'],
    author: 'Chef Remy',
  ),
];

final List<Author> chefAuthor = [
  Author(
    id: '1',
    firstName: 'Gordon',
    lastName: 'Ramsay',
    bio:
        'Gordon Ramsay is a British chef, restaurateur, and television personality known for his fiery temper and Michelin-starred restaurants.',
    profilePictureUrl: '',
    specialties: 'British, French, Fine Dining',
    awards: ['3 Michelin Stars', 'OBE (Order of the British Empire)'],
    yearsActive: 30,
  ),
  Author(
    id: '2',
    firstName: 'Julia',
    lastName: 'Child',
    bio:
        'Julia Child was an American cooking teacher, author, and television personality who introduced French cuisine to the American public.',
    profilePictureUrl: '',
    specialties: 'French Cuisine, Classic Techniques',
    awards: ['Peabody Award', 'Emmy Award'],
    yearsActive: 40,
  ),
  Author(
    id: '3',
    firstName: 'Massimo',
    lastName: 'Bottura',
    bio:
        'Massimo Bottura is an Italian chef and the owner of Osteria Francescana, a three-Michelin-star restaurant based in Modena, Italy.',
    profilePictureUrl: '',
    specialties: 'Italian, Modern Cuisine',
    awards: ["3 Michelin Stars', 'World’s 50 Best Restaurants Winner"],
    yearsActive: 25,
  ),
  Author(
    id: '4',
    firstName: 'Samin',
    lastName: 'Nosrat',
    bio:
        'Samin Nosrat is an American chef, author, and TV host best known for her book and series "Salt, Fat, Acid, Heat".',
    profilePictureUrl: '',
    specialties: 'California Cuisine, Persian-Inspired Dishes',
    awards: ['James Beard Award'],
    yearsActive: 15,
  ),
  Author(
    id: '5',
    firstName: 'Roy',
    lastName: 'Choi',
    bio:
        'Roy Choi is a Korean-American chef known for starting the gourmet food truck movement with Kogi BBQ.',
    profilePictureUrl: '',
    specialties: 'Korean-Mexican Fusion, Street Food',
    awards: ['Time 100 Most Influential People'],
    yearsActive: 20,
  ),
  Author(
    id: '6',
    firstName: 'Alice',
    lastName: 'Waters',
    bio:
        'Alice Waters is a pioneer of the farm-to-table movement and the founder of Chez Panisse in Berkeley, California.',
    profilePictureUrl: '',
    specialties: 'California Cuisine, Organic, Farm-to-Table',
    awards: ['James Beard Award', 'National Humanities Medal'],
    yearsActive: 45,
  ),
  Author(
    id: '7',
    firstName: 'José',
    lastName: 'Andrés',
    bio:
        'José Andrés is a Spanish-American chef and humanitarian known for bringing Spanish cuisine to America and his disaster relief efforts.',
    profilePictureUrl: '',
    specialties: 'Spanish Cuisine, Tapas, Humanitarian Cooking',
    awards: ['National Humanities Medal', 'James Beard Award'],
    yearsActive: 30,
  ),
  Author(
    id: '8',
    firstName: 'Dominique',
    lastName: 'Crenn',
    bio:
        'Dominique Crenn is the first female chef in the U.S. to earn three Michelin stars for her restaurant Atelier Crenn.',
    profilePictureUrl: '',
    specialties: 'Modern French, Artistic Cuisine',
    awards: ['3 Michelin Stars', 'Best Female Chef'],
    yearsActive: 20,
  ),
  Author(
    id: '9',
    firstName: 'Marcus',
    lastName: 'Samuelsson',
    bio:
        'Marcus Samuelsson is an Ethiopian-born Swedish-American chef celebrated for his blending of international cuisine and culture.',
    profilePictureUrl: '',
    specialties: 'African, Swedish, Soul Food Fusion',
    awards: ['James Beard Award', 'Top Chef Masters Winner'],
    yearsActive: 25,
  ),
  Author(
    id: '10',
    firstName: 'Nadiya',
    lastName: 'Hussain',
    bio:
        'Nadiya Hussain rose to fame after winning The Great British Bake Off and has since authored several cookbooks and hosted TV shows.',
    profilePictureUrl: '',
    specialties: 'Baking, British-Asian Fusion',
    awards: ['MBE (Member of the Order of the British Empire)'],
    yearsActive: 10,
  ),
];
