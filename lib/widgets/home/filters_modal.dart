import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// widgets
import 'package:yumbook_flutter/widgets/home/selectable_pill.dart';
// import 'package:yumbook_flutter/widgets/shared/pill.dart';

// extras
import 'package:yumbook_flutter/models/category.dart';
import 'package:yumbook_flutter/data/dummy_data.dart';

class FiltersModal extends StatefulWidget {
  const FiltersModal({super.key});

  @override
  State<FiltersModal> createState() => _FiltersModalState();
}

class _FiltersModalState extends State<FiltersModal> {
  String? selectedCategoryId = 'c0';
  RangeValues _currentRangeValues = const RangeValues(15, 30);

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
    final categoryOptions = [
      const Category(id: 'c0', name: 'All', description: ''),
      ...categories,
    ];

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

          // category pills
          Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  categoryOptions.map((category) {
                    final isSelected =
                        selectedCategoryId == category.id ||
                        (category.id == 'all' && selectedCategoryId == null);
                    return SelectablePill(
                      label: category.name,
                      isSelected: isSelected,
                      onTap: () {
                        setState(() {
                          selectedCategoryId =
                              category.id == 'all' ? null : category.id;
                        });
                      },
                    );
                  }).toList(),
            ),
          ),
          const SizedBox(height: 20),

          // preparation slider
          Text(
            'Preparation Time (Minutes)',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 5,
            max: 50,
            divisions: 9,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
            activeColor: Colors.orange,
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
