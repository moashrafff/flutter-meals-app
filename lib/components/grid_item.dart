import 'package:flutter/material.dart';

import '../models/Category.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.category, required this.onChooseCategory});

  final Category category;
  final void Function() onChooseCategory ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChooseCategory,
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16) ,
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.9),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
