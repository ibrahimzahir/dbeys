import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/beys_item.dart';

class PopBeysList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final poplist = Provider.of<BeysItem>(context);
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            child: Image.asset(
              poplist.imgeUrls,
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(5.0),
          alignment: Alignment.bottomCenter,
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black.withAlpha(0),
                Colors.black12,
                Colors.black
              ],
            ),
          ),
          child: Text(
            poplist.name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0),
          ),
        ),
      ],
    );

    // Container(
    //   height: 100,
    //   width: 150,
    //   child: Expanded(
    //     child: InkWell(
    //       onTap: () {},
    //       child: Stack(
    //         children: <Widget>[
    //           Image.asset(
    //             poplist.imgeUrls,
    //             fit: BoxFit.cover,
    //           ),
    //           //Text(poplist.name ?? 'no name'),
    //         ],
    //       ),
    //     ),

    // child: Stack(
    //   children: [
    //     // Hero(
    //     //   tag: poplist.name ?? 'No name',
    //     //   child: ClipRRect(
    //     //     borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
    //     //     child: Image.asset(poplist.imgeUrls),
    //     //   ),
    //     // ),
    //     // Container(
    //     //   width: 110,
    //     //   decoration: BoxDecoration(
    //     //     borderRadius: BorderRadius.circular(10),
    //     //     border: Border.all(color: Colors.blueAccent),
    //     //   ),
    //     //   margin: const EdgeInsets.symmetric(horizontal: 5),
    //     //   alignment: Alignment.center,
    //     //   child: Row(
    //     //     mainAxisAlignment: MainAxisAlignment.center,
    //     //     children: [
    //     //       Image.asset(poplist.imgeUrls),
    //     //       SizedBox(
    //     //         height: 6,
    //     //       ),
    //     //     ],
    //     //   ),
    //     // ),
    //     Container(
    //       width: 110,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: Colors.blueAccent),
    //       ),
    //       margin: const EdgeInsets.symmetric(horizontal: 5),
    //       alignment: Alignment.center,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             poplist.name ?? 'No name',
    //             style: TextStyle(
    //               color: Colors.black,
    //               fontSize: 20,
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //           SizedBox(
    //             height: 6,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
    //),
    //);
  }
}
