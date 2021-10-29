import 'package:flutter/material.dart';
import 'package:workshop/models/dummy_mount_items.dart';
import 'package:workshop/models/mount_model.dart';
import 'package:workshop/screens/details_screen.dart';

// app mount listview widget
class AppMountListView extends StatelessWidget {
  const AppMountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          MountModel currentMount = mountItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(mount: currentMount)));
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(currentMount.path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentMount.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    currentMount.location,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}