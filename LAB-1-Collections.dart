void main() {
  List<String> favoriteHobbies = [];

  favoriteHobbies.add('Kitting');
  favoriteHobbies.add('Reading books');
  favoriteHobbies.add('Braiding hair');
  favoriteHobbies.add('Cooking');

  print('Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.remove('Hiking');

  print('Updated Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.sort();

  print('Sorted Favorite Hobbies: $favoriteHobbies');

  bool isEmpty = favoriteHobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}
