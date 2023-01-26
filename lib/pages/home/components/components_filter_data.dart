import 'package:flutter/material.dart';
import 'package:restaurantapp/utils/utils.dart';

class FilterData extends StatelessWidget {
  const FilterData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 6,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: kSmoothColor,
        elevation: 10,
        child: const Text(
          'data',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: kDarkColor, fontSize: 15),
        ),
      ),
    );
  }
}
