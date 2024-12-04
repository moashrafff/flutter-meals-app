

import 'package:flutter/material.dart';

import '../models/Category.dart';

class GridItem extends StatelessWidget {
  const GridItem ({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return  Text(category.title);
  }
}