import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:practice_app/models/catalog.dart';
import 'package:practice_app/screens/learn_flutter.dart';
import 'package:practice_app/screens/login.dart';
import 'package:practice_app/utils/routes.dart';
import 'package:practice_app/widgets/drawer.dart';
import 'package:practice_app/widgets/items_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["items"];
  }

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(4, ((index) => CatalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(),
      drawer: const Mydrawer(),

      // BODY
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummylist[index],
              );
            }),
      ),
    );
  }
}
