import 'package:flutter/material.dart';
import 'package:workshop/constraints.dart';
import 'package:workshop/models/category_model.dart';
import 'package:workshop/models/dummy_categories.dart';

// app category list widget
class AppCategoryList extends StatelessWidget {
  const AppCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ), // for the category header
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                CategoryModel currentCategory = categories[index];
                return Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.2), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        currentCategory.icon,
                        color: mainColor,
                      ),
                      Text(
                        currentCategory.category,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              },
            ),
          ), // for wrapping the listView
        ],
      ),
    );
  }
}
