import 'package:flutter/material.dart';
import '../models/beys_item.dart';

class BeysItems with ChangeNotifier {
  List<BeysItem> _items = [
    BeysItem(
      id: '1',
      name: 'ވަކަރު ބޭސް',
      description: 'ވަކަރު ކޮށާފައި މިރުސް ހާކާލާނީ. އެއަށްފަހު ބިސް ހާކާނީ',
      imgeUrls: 'assets/images/beys.jpg',
    ),
    BeysItem(
      id: '2',
      name: 'ހަބަރު ބޭސް',
      description: 'އި ކަފަ ލާފައި ބަހައްޓާނީ',
      imgeUrls: 'assets/images/beys1.jpg',
    ),
    BeysItem(
      id: '3',
      name: 'ރީދޫ ބޭސް',
      description: 'ރީދޫ ފުނޑާފައި ގިތެޔޮު ހާކަފައި ކަފަ ލާފައި ބަހައްޓާނީ',
      imgeUrls: 'assets/images/beys2.jpg',
    ),
    BeysItem(
      id: '3',
      name: 'ރީދޫ ބޭސް',
      description: 'ރީދޫ ފުނޑާފައި ގިތެޔޮު ހާކަފައި ކަފަ ލާފައި ބަހައްޓާނީ',
      imgeUrls: 'assets/images/beys3.jpeg',
    ),
    BeysItem(
      id: '3',
      name: 'ރީދޫ ބޭސް',
      description: 'ރީދޫ ފުނޑާފައި ގިތެޔޮު ހާކަފައި ކަފަ ލާފައި ބަހައްޓާނީ',
      imgeUrls: 'assets/images/beys4.jpg',
    ),
  ];

  List<BeysItem> get items {
    return [..._items];
  }
}
