import 'package:flutter/material.dart';
import 'package:workshop/constraints.dart';
import 'package:workshop/widgets/bottom_bar.dart';
import 'package:workshop/widgets/category_list.dart';
import 'package:workshop/widgets/header.dart';
import 'package:workshop/widgets/mount_listview.dart';
import 'package:workshop/widgets/search.dart';

// Landing Page
class MountsApp extends StatelessWidget {
  const MountsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Icon(
          Icons.terrain,
          size: 40,
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: mainColor),
      ),
      drawer: Drawer(
        child: Container(
          color: mainColor,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(30),
          child: const Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView(),
          ),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}