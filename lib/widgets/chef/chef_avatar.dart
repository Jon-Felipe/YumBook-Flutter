import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// extras
import 'package:yumbook_flutter/models/author.dart';

class ChefAvatar extends StatelessWidget {
  const ChefAvatar({super.key, required this.chef});

  final Author chef;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey.shade200,
            child: Icon(FontAwesomeIcons.person, size: 36),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: 80,
            child: Text(
              '${chef.firstName} ${chef.lastName[0]}.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
