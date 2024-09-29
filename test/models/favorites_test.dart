import 'package:test/test.dart';
import 'package:test_1/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    //add
    test('A new item should be added', () {
      var number = 25;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });


    //remove
    test('An item should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}