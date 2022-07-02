import 'package:dhivehibeys/models/beys_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BeysListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bey_list = Provider.of<BeysItem>(context, listen: false);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blueAccent),
        ),
        margin: const EdgeInsets.only(right: 5),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bey_list.name ?? 'No name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
