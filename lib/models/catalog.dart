import 'package:erlan_stat/models/item.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Buku Program C++',
    'Buku JavaScript Dasar',
    'Buku Flutter & React',
    'Buku HTML & CSS',
  ];

  ItemModel getById(int id) => ItemModel(id, itemNames[id % itemNames.length]);

  ItemModel getByPosition(int position) {
    return getById(position);
  }
}
