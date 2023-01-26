import 'package:flutter/material.dart';
import 'package:restaurantapp/utils/utils.dart';

import 'components/components_filter_data.dart';
import 'components/components_home_banner_list.dart';
import 'components/components_list_restoran.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: kLightColor),
        child: Column(
          children: [
            const BannerList(),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 15,
              decoration: const BoxDecoration(color: kLightColor),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const FilterData();
                  }),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                  decoration: const BoxDecoration(color: kLightColor),
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {}, child: const ListRestoran());
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
