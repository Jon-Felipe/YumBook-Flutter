import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// extras
import 'package:yumbook_flutter/models/author.dart';

class ChefScreen extends StatelessWidget {
  const ChefScreen({super.key, required this.chefs});

  final List<Author> chefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Chefs'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.all(24),
        itemCount: chefs.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (ctx, index) {
          final chef = chefs[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                ),
                alignment: Alignment.center,
                child: Icon(FontAwesomeIcons.person, size: 40),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 100,
                child: Text(
                  '${chef.firstName} ${chef.lastName[0]}.',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
