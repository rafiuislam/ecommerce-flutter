import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:flutter_app_1/widgets/drawer.dart';
import 'package:flutter_app_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var prouctsData = decodedData["products"];
    print(prouctsData);
  }

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
