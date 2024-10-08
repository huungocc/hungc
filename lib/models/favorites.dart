import 'package:flutter/material.dart';

/// The [Favorites] class holds a list of favorite items saved by the user.
class Favorites extends ChangeNotifier {
  //danh sách yêu thích
  final List<int> _favoriteItems = [];

  //Getter public trả về ds _favoriteItems
  List<int> get items => _favoriteItems;

  void add(int itemNo) {
    _favoriteItems.add(itemNo);
    notifyListeners();
  }

  void remove(int itemNo) {
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}