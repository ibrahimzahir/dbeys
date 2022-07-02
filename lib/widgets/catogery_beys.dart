import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/beys_items.dart';
import '../models/category.dart';
import 'beys_list.dart';

class CetogeryBeys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final beys_item = Provider.of<BeysItems>(context);
    //final beys = beys_item.items;
    return ListView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      physics: ClampingScrollPhysics(),
      //itemCount: beys.length,
      //itemBuilder: (cxt, i) => ChangeNotifierProvider.value(
      //value: beys[i],
      //child: BeysListView(),
      //),
      //);
      children: Category.catogery
          .map(
            (category) => Category(
              model: category,
              onSelected: (model) {
                setState(() {
                  Category.catogery.forEach((item) {
                    item.isSelected = false;
                  });
                  model.isSelected = true;
                });
              },
            ),
          )
          .toList(),
    );
  }
}
