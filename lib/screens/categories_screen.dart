import 'package:flutter/material.dart';
import 'package:meals/components/grid_item.dart';
import 'package:meals/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pick Your Category',
          ),
        ),
        body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
          ),
          children:  
            availableCategories
            .map((category) => GridItem(category: category))
            .toList(),
        ));
  }
}
