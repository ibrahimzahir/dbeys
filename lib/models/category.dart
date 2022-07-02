import 'package:flutter/material.dart';

class Category {
  int id;
  String name;
  String description;
  String image;
  int rating;
  bool isSelected;

  Category({
    this.id,
    this.name,
    this.description,
    this.image,
    this.rating,
    this.isSelected = false,
  });
}

class Catgory with ChangeNotifier {
  List<Category> _catogery = [
    Category(
      id: 1,
      name: 'ވައިގެ ކަންތައް',
      description:
          'ވަކަރު ބޭސްވަކަރު ބޭސްވަކަރު ވައި ނުވަތަ ގޭސް ކަންތަކީ ވަރަށް އާއްމު ކަމެކެވެ. މީގެ ސަބަބުން އެވެނި މިވެނި ކަމެއް ދިމާވެއެވެ.',
      image: 'assets/beys11.jpg',
      isSelected: true,
    ),
    Category(
      id: 2,
      name: 'މައިބަދަގެ ފަރުވާ',
      description:
          'މައިބަދައިގެ އާއްމުކޮށް ދިމާވާ ކަންތަކީ މިއެވެ. އޭގެ ސަބަބުން އެހެން މިހެން ވެއެވެ.',
      image: 'assets/beys1.jpg',
      isSelected: true,
    ),
    Category(
      id: 3,
      name: 'ކަކުލުގެ ބޭސް',
      description:
          'މައިކަކުލުގެ ދިމާވާ ކަންތަކީ މިއެވެ. އޭގެ ސަބަބުން އެހެން މިހެން ވެއެވެ.',
      image: 'assets/beys2.jpg',
      isSelected: true,
    ),
    Category(
      id: 4,
      name: 'ހަކުރުގެ ބަލި',
      description:
          'ވަހަކުރުގެ ބައްަޔަކީ އެހެން މިހެންގޮސް ތިހެން މިހެން ހުރެ އެކަން މިކަން',
      image: 'assets/beys3.jpg',
      isSelected: true,
    ),
    Category(
      id: 5,
      name: 'ލޭމައްޗަށްދިއުން',
      description:
          'ލޭމައްޗަށް ދިއުން ނުވަތަ ލޭގެ ޕްރަޝަރު ދަށްވުން ދެންގޮސް އެހެން މިހެންސް',
      image: 'assets/beys4.jpg',
      isSelected: true,
    ),
  ];
  List<Category> get catogery {
    return [..._catogery];
  }
}
