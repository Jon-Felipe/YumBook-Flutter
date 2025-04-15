import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// screens
import 'package:yumbook_flutter/screens/category.dart';

// components
import 'package:yumbook_flutter/widgets/shared/text_link.dart';
import 'package:yumbook_flutter/widgets/shared/pill.dart';
import 'package:yumbook_flutter/widgets/recipe/recipe_list.dart';

// data
import 'package:yumbook_flutter/data/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: const Text('JF', style: TextStyle(fontSize: 24)),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Jon!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Check Amazing Recipes'),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Icon(FontAwesomeIcons.bell, size: 24),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // search recipe widget
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          prefixIcon: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: 20,
                          ),
                          hintText: 'Search Any Recipe...',
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                        ),
                        onChanged: (text) {
                          setState(() {
                            _searchText = text;
                          });
                          print("Search text: $_searchText");
                        },
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(FontAwesomeIcons.sliders, size: 22),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        TextLink(
                          text: 'See All',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => CategoryScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (ctx, index) {
                          final category = categories[index];
                          return Pill(text: category.name);
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          'Popular Recipes',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        TextLink(
                          text: 'See All',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => CategoryScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // recipe list
                    RecipeList(recipes: recipes),
                    const SizedBox(height: 20),

                    // list of chefs
                    Row(
                      children: [
                        Text(
                          'Top Chefs',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        TextLink(
                          text: 'See All',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => CategoryScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: chefAuthors.length,
                        itemBuilder: (ctx, index) {
                          final chef = chefAuthors[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.grey.shade200,
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: 80,
                                  child: Text(
                                    '${chef.firstName} ${chef.lastName[0]}.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
