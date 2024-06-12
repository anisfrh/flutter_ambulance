import 'package:app_food_order/animation/scale_route.dart';
import 'package:app_food_order/pages/foods_detail.dart';
import 'package:flutter/material.dart';

class PopularFoodWidget extends StatefulWidget {
  const PopularFoodWidget({super.key});

  @override
  State<PopularFoodWidget> createState() => _PopularFoodWidgetState();
}

class _PopularFoodWidgetState extends State<PopularFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: const PopularFoodItems(),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  final String name;
  // final String imageUrl;
  // final String rating;
  final String jenis;
  final String? slug;

  const PopularFoodTiles({
    Key? key,
    required this.name,
    // required this.imageUrl,
    // required this.rating,
    required this.jenis,
    this.slug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, ScaleRoute(page: const DetailPage()));
      },
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                width: 170,
                height: 210,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.topRight,
                            // width: double.infinity,
                            padding: const EdgeInsets.only(right: 5, top: 5),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 25,
                                    offset: Offset(0.00, 0.75),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Center(
                        //     // child:
                        //     //     Image.asset("assets/$imageUrl.png",
                        //     //     // height: 140,
                        //     //     // width: 130,
                        //     //   ),
                        //   ),
                        // )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            name,
                            style: const TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          // width: double.infinity,
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 25,
                                  offset: Offset(0.00, 0.75),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 8,
                        right: 5,
                        bottom: 24,
                      ),
                      child: Text(
                        jenis,
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    const Icon(
                      Icons.add_circle_outline_outlined,
                      color: Colors.blueGrey,
                      size: 38,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        PopularFoodTiles(
          name: "Emergency",
          // imageUrl: "ic_ambulance",
          // rating: "4.0",
          jenis:
              "Pertolongan Penderita Gawat Darurat Pra Rumah Sakit dan antar Fasilitas Pelayanan Kesehatan.",
          slug: "fried-egg",
        ),
        PopularFoodTiles(
          name: "Rujukan",
          // imageUrl: "ic_popular_food_3",
          // rating: "4.9",
          jenis: "Sebagai kendaraan transport rujukan",
          slug: "",
        ),
        PopularFoodTiles(
          name: "Lakalantas",
          // imageUrl: "ic_popular_food_6",
          // // rating: "4.9",
          jenis:
              "Pengangkutan penderita gawat darurat dari lokasi kejadian ke tempat tindakan definitive.",
          slug: "",
        ),
      ],
    );
  }
}
