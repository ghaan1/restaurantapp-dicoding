import 'package:flutter/material.dart';
import 'package:restaurantapp/models/models_restaurant.dart';
import 'package:restaurantapp/pages/detail/components/components_dialog.dart';
import 'package:restaurantapp/utils/utils.dart';

// ignore: must_be_immutable
class DetailRestaurant extends StatefulWidget {
  Restaurant restaurant;
  DetailRestaurant({super.key, required this.restaurant});

  @override
  State<DetailRestaurant> createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant> {
  String nameResto = '';
  String nameCity = '';
  double rating = 0.0;
  String contentDesciption = '';
  String image = '';
  List<Foods>? food;
  List<Drinks>? drinks;

  @override
  void initState() {
    super.initState();
    nameResto = widget.restaurant.name;
    nameCity = widget.restaurant.city;
    rating = widget.restaurant.rating;
    image = widget.restaurant.pictureId;
    contentDesciption = widget.restaurant.description;
    food = widget.restaurant.menus?.foods;
    drinks = widget.restaurant.menus?.drinks;
  }

  Icon getStar() {
    return const Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
              color: kPrimaryColor,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                          bottom: Radius.circular(0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            nameResto,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  nameCity,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Row(
                                  children: [
                                    getStar(),
                                    Text(
                                      rating.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Deskripsi',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: SingleChildScrollView(
                            child: Text(
                              contentDesciption,
                              textAlign: TextAlign.justify,
                            ),
                          )),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: kPrimaryColor,
                              elevation: 10,
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return DetailMenuRestaurant(
                                      restaurant: widget.restaurant,
                                    );
                                  });
                            },
                            child: const Text("Menu",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
