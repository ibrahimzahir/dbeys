import 'package:flutter/material.dart';
import '../widgets/catogery_beys.dart';
import '../widgets/popular_bey.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'ދިވެހި ބޭސް',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'ކެޓެގެރީ',
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.8),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 12),
                  height: 50,
                  child: CetogeryBeys(),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'މަޝްހޫރު',
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.8),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.only(right: 5),
                  child: PopularBeys(),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 5),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF3443fa),
                          size: 20,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            color: Color(0xFF282b3a),
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        'ލުއި ފަރުވާ',
                        style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.only(right: 5),
                  child: PopularBeys(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
