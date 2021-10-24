import 'package:flutter/material.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:flutter_app_1/widgets/drawer.dart';
import 'package:flutter_app_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    final dummy = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Catagories",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummy.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummy[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
