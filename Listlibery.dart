void main() {
  // List of books in the library (each book as a map)
  List<Map<String, dynamic>> libraryBooks = [
    {
      'title': 'Bangabandhu Sheikh Mujib',
      'author': 'Humayun Ahmed',
      'year': 2004,
    },
    {
      'title': 'Stories of Rabindranath',
      'author': 'Rabindranath Tagore',
      'year': 1916,
    },
    {'title': 'Feluda Collection', 'author': 'Satyajit Ray', 'year': 1970},
  ];

  // Print the entire book list
  print('Library book list:');
  for (var book in libraryBooks) {
    print(
      'Title: ${book['title']}, Author: ${book['author']}, Published: ${book['year']}',
    );
  }

  // Total number of books
  print('Total number of books: ${libraryBooks.length}');

  // Adding a new book
  print('Adding a new book...');
  libraryBooks.add({
    'title': 'Pather Panchali',
    'author': 'Bibhutibhushan Bandyopadhyay',
    'year': 1929,
  });
  print('List after adding the new book:');
  for (var book in libraryBooks) {
    print('Title: ${book['title']}, Author: ${book['author']}');
  }

  // Searching for a specific book
  String searchTitle = 'Feluda Collection';
  bool found = false;
  for (var book in libraryBooks) {
    if (book['title'] == searchTitle) {
      print(
        'The book "$searchTitle" is available in the library. Author: ${book['author']}',
      );
      found = true;
      break;
    }
  }
  if (!found) {
    print('The book "$searchTitle" is not available in the library.');
  }

  // Removing a book
  print('Removing the book "Stories of Rabindranath"...');
  libraryBooks.removeWhere(
    (book) => book['title'] == 'Stories of Rabindranath',
  );
  print('List after removal:');
  for (var book in libraryBooks) {
    print('Title: ${book['title']}, Published: ${book['year']}');
  }

  // Sorting books by publication year
  print('Sorting books by publication year...');
  libraryBooks.sort((a, b) => a['year'].compareTo(b['year']));
  print('Sorted book list:');
  for (var book in libraryBooks) {
    print('Title: ${book['title']}, Published: ${book['year']}');
  }
}
