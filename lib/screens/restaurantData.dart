class RestaurantData {
  String restName = '';
  String logoURL = '';
  String oldPrice = '';
  String newPrice = '';
  String description = '';

  RestaurantData(
      {required this.restName,
      required this.logoURL,
      required this.oldPrice,
      required this.newPrice});

  RestaurantData.main(
      {required this.restName,
      required this.logoURL,
      required this.description});
}
