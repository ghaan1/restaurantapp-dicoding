import 'package:flutter/material.dart';

import 'package:restaurantapp/models/models_restaurant.dart';
import 'package:restaurantapp/utils/utils.dart';

class ListRestoran extends StatelessWidget {
  Restaurant restaurant;
  ListRestoran({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [kSmoothColor, kSmoothColor])),
      child: Row(
        children: [
          const Opacity(
            opacity: .5,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 10, 20),
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(restaurant.pictureId))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    restaurant.name,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                        color: kDarkColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    restaurant.city,
                    style: const TextStyle(
                        color: kDarkColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        restaurant.rating.toString(),
                        style: const TextStyle(
                            color: kDarkColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
