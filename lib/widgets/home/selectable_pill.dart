import 'package:flutter/material.dart';

class SelectablePill extends StatelessWidget {
  const SelectablePill({
    super.key,
    required this.label,
    required this.isSelected,
    this.selectedColour = Colors.orange,
    this.unselectedColour = Colors.grey,
  });

  final String label;
  final bool isSelected;
  final Color selectedColour;
  final Color unselectedColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? selectedColour : unselectedColour.withAlpha(40),
        border: Border.all(
          color: isSelected ? selectedColour : unselectedColour,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : unselectedColour,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
