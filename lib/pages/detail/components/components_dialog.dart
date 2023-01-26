import 'package:flutter/material.dart';

import 'package:restaurantapp/models/models_restaurant.dart';
import 'package:restaurantapp/pages/detail/detail_main.dart';
import 'package:restaurantapp/utils/utils.dart';

class DetailMenuRestaurant extends StatefulWidget {
  Restaurant restaurant;
  DetailMenuRestaurant({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  _DetailMenuRestaurantState createState() => _DetailMenuRestaurantState();
}

class _DetailMenuRestaurantState extends State<DetailMenuRestaurant>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Foods>? food;
  List<Drinks>? drinks;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    food = widget.restaurant.menus?.foods;
    drinks = widget.restaurant.menus?.drinks;
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: kPrimaryColor,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text('Food'),
                    ),
                    Tab(
                      child: Text('Drink'),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Center(
                  child: ListView.builder(
                      itemCount: food?.length,
                      itemBuilder: ((context, index) {
                        return Container(
                            width: double.infinity,
                            height: 54,
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: kDarkColor,
                                  width: 1,
                                )
                                // color: Colors.white,
                                ),
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      food![index].name ?? '',
                                      style: const TextStyle(
                                        color: kDarkColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      }))),
              Center(
                  child: ListView.builder(
                      itemCount: drinks?.length,
                      itemBuilder: ((context, index) {
                        return Container(
                            width: double.infinity,
                            height: 54,
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: kDarkColor,
                                  width: 1,
                                )
                                // color: Colors.white,
                                ),
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      drinks![index].name ?? '',
                                      style: const TextStyle(
                                        color: kDarkColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      }))),
            ]),
          ),
        ]),
      ),
    );
  }
}
