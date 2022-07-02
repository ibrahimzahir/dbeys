import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';
import './providers/beys_items.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => BeysItems(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dhivehi Beys',
        theme: ThemeData(
          fontFamily: 'Dhivehi',
          primarySwatch: Colors.blue,
        ),
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: HomeScreen(),
        //routes: BeysDetailsScreen.routeName: (ctx) => BeysDetailsScreen(),
      ),
    );
  }
}
