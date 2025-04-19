import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
    );
  }
}
