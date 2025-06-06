void main() {
  List<String> productList = ['Rice', 'Lentils', 'Oil', 'Chili', 'Turmeric'];

  print('Product list in the shop: $productList');

  print('Adding new product "Salt"...');
  productList.add('Salt');
  print('List after adding: $productList');

  print('Total number of products: ${productList.length}');

  String searchItem = 'Oil';
  if (productList.contains(searchItem)) {
    print('$searchItem is in stock.');
  } else {
    print('$searchItem is not in stock.');
  }

  print('Removing product "Chili"...');
  productList.remove('Chili');
  print('List after removal: $productList');

  print('Sorting products alphabetically...');
  productList.sort();
  print('Sorted product list: $productList');

  print('Product names in uppercase:');
  productList.forEach((product) => print(product.toUpperCase()));
}
