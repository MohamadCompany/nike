class OffModel {
  final String pic;
  final String off;
  final String category;
  final String url;

  OffModel({
    required this.pic,
    required this.off,
    required this.category,
    required this.url,
  });
}

List<OffModel> myData = [
  OffModel(
    pic: 'assets/shoes/green.png',
    off: '20% Discount',
    category: 'on your first purchase',
    url: 'api one',
  ),
  OffModel(
    pic: 'assets/shoes/blue.png',
    off: '25% Discount',
    category: 'on your first shoes',
    url: 'api two',
  ),
  OffModel(
    pic: 'assets/shoes/yellow.png',
    off: '35% Discount',
    category: 'on your first talking',
    url: 'api three',
  ),
  OffModel(
    pic: 'assets/shoes/red2.png',
    off: '25% Discount',
    category: 'on your first talking',
    url: 'api four',
  )
];
