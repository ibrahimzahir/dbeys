import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/beys_items.dart';
import '../widgets/pop_beys_list.dart';

class PopularBeys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pop_beys = Provider.of<BeysItems>(context);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      reverse: true,
      physics: ClampingScrollPhysics(),
      itemCount: pop_beys.items.length,
      itemBuilder: (cxt, i) => ChangeNotifierProvider.value(
        value: pop_beys.items[i],
        child: PopBeysList(),
      ),
    );
  }
}
