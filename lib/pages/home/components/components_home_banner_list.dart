import 'package:flutter/material.dart';
import 'package:restaurantapp/utils/utils.dart';

class BannerList extends StatelessWidget {
  const BannerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 180,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(0), bottom: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                'RESTORANKU',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  color: kDarkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 25,
              child: Text(
                'Menyediakan Segala Kebutuhanmu',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  color: kDarkColor,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                label: const Text('Search'),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                filled: true,
                fillColor: Colors.white,
                labelStyle: const TextStyle(
                    color: kDarkColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito'),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
