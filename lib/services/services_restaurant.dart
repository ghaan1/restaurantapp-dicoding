part of 'services.dart';

class ServicesRestaurant {
  Future<List> readJson() async {
    List<Restaurant> restaurants = [];
    List<dynamic> restaurantServices = [];

    final String response =
        await rootBundle.loadString('assets/json/sample.json');
    final data = json.decode(response);
    List<dynamic> list = (data as Map<String, dynamic>)['restaurants'];
    List<dynamic> listMenu = (data as Map<String, dynamic>)['menus'];

    for (var restaurant in list) {
      restaurants.add(Restaurant.fromJson(restaurant));
    }
    restaurantServices.add(restaurants);
    restaurantServices.add(listMenu);

    return restaurantServices;
  }
}
