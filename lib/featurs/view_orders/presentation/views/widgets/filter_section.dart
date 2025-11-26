import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: () {},
      child: const Row(
        children: [
          SizedBox(width: 8),
          Icon(Icons.filter_alt),
          SizedBox(width: 8),
          Text(
            'Filter',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
