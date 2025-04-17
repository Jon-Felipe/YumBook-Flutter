import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// widgets
import 'package:yumbook_flutter/widgets/shared/pill.dart';

// extras
import 'package:yumbook_flutter/models/category.dart';

class FiltersModal extends StatelessWidget {
  const FiltersModal({super.key, required this.categories});

  final List<Category> categories;

  List<Widget> _generateMinuteMarkers() {
    List<Widget> markers = [];
    for (int i = 1; i <= 10; i++) {
      double value = i * 5;
      markers.add(
        SizedBox(
          width: 20,
          child: Center(
            child: Text(
              value.toStringAsFixed(0),
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      );
    }
    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(FontAwesomeIcons.arrowLeft),
              ),
              const SizedBox(width: 8),
              Text(
                'Filters',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(),
          const SizedBox(height: 20),
          Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (ctx, index) {
                if (index == 0) {
                  return Pill(text: 'All');
                }
                final category = categories[index - 1];
                return Pill(text: category.name);
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Preparation Time (Minutes)',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RangeSlider(
            values: RangeValues(15, 30),
            min: 5,
            max: 50,
            divisions: 9,
            onChanged: (values) {},
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _generateMinuteMarkers(),
          ),
        ],
      ),
    );
  }
}
