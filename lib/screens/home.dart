import 'package:flutter/material.dart';
import 'package:practice_app/models/catalog.dart';
import 'package:practice_app/screens/learn_flutter.dart';
import 'package:practice_app/screens/login.dart';
import 'package:practice_app/utils/routes.dart';
import 'package:practice_app/widgets/drawer.dart';
import 'package:practice_app/widgets/items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
