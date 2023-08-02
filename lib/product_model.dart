class ProductModel {
  final String image;
  final String name;
  final String price;

  ProductModel({required this.image,required this.name,required this.price});
}

List<ProductModel> products = [
  ProductModel(
      image: 'assets/shoes/yellow.png',
      name: 'Air Max 97',
      price: '\$30.12'
  ),
  ProductModel(
      image: 'assets/shoes/red2.png',
      name: 'Air Max SE',
      price: '\$35.99'
  ),
  ProductModel(
      image: 'assets/shoes/blue.png',
      name: 'React',
      price: '\$30.12'
  ),
  ProductModel(
      image: 'assets/shoes/green.png',
      name: 'purchase',
      price: '\$39.99'
  ),
];