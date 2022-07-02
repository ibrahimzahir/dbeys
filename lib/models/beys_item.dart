import 'package:flutter/foundation.dart';

class BeysItem with ChangeNotifier {
  final String id;
  final String name;
  final String description;
  final String imgeUrls;

  BeysItem({
    this.id,
    this.name,
    this.description,
    this.imgeUrls,
  });
}
