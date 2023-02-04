import 'package:flutter/material.dart';
import 'package:restaurantapp/models/models_restaurant.dart';
import 'package:restaurantapp/pages/detail/detail_main.dart';
import 'package:restaurantapp/services/services.dart';
import 'package:restaurantapp/utils/utils.dart';
import 'components/components_home_banner_list.dart';
import 'components/components_list_restoran.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  List<Restaurant> restaurant = [];

  fetchData() {
    ServicesRestaurant().readJson().then((resultList) {
      setState(() {
        restaurant = resultList[0];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: kLightColor),
        child: Column(
          children: [
            const BannerList(),
            Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                  decoration: const BoxDecoration(color: kLightColor),
                  child: ListView.builder(
                    itemCount: restaurant.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailRestaurant(
                                    restaurant: restaurant[index],
                                  );
                                },
                              ),
                            );
                          },
                          child: ListRestoran(
                            restaurant: restaurant[index],
                          ));
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
