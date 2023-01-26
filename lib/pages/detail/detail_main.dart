import 'package:flutter/material.dart';
import 'package:restaurantapp/utils/utils.dart';

class DetailRestoran extends StatefulWidget {
  const DetailRestoran({super.key});

  @override
  State<DetailRestoran> createState() => _DetailRestoranState();
}

class _DetailRestoranState extends State<DetailRestoran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Column(
              children: [
                Container(
                  height: 300,
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                          bottom: Radius.circular(0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'NAMARESTO',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'kota',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              'Bintang',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
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
                          child: const Text('isiDeskripsi')),
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
                            onPressed: () {},
                            child: const Text("Menu",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                ))
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
