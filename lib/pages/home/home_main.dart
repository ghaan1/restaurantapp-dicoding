import 'package:flutter/material.dart';
import 'package:restaurantapp/utils/utils.dart';

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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                  FilterData(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(color: kLightColor),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                      ListRestoran(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class BannerList extends StatelessWidget {
  const BannerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(0), bottom: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.all(20),
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
              // controller: txtEmail,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                label: const Text('Search'),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                // errorText: validateEmail(txtEmail.text),
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

class ListRestoran extends StatelessWidget {
  const ListRestoran({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [kSmoothColor, kSmoothColor])),
      child: Stack(
        children: [
          const Opacity(
            opacity: .5,
          ),
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Image.png?alt=media&token=8256c357-cf86-4f76-8c4d-4322d1ebc06c"),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Nama Restoran",
                  style: TextStyle(
                      color: kDarkColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Kota",
                  style: TextStyle(
                      color: kDarkColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.star),
                    Text(
                      "5",
                      style: TextStyle(
                          color: kDarkColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
