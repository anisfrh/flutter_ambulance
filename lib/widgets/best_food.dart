import 'package:app_food_order/animation/scale_route.dart';
import 'package:app_food_order/pages/foods_detail.dart';
import 'package:flutter/material.dart';

class BestFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  // final String rating;
  // final String numberOfRating;
  // final String price;
  final String? slug;

  const BestFoodTiles({
    Key? key,
    required this.name,
    required this.imageUrl,
    // required this.rating,
    // required this.numberOfRating,
    // required this.price,
    this.slug,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, ScaleRoute(page: const DetailPage()));
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/$imageUrl.jpg",
              ),
            ),
          )
        ],
      ),
    );
  }
}


class BestFoodList extends StatelessWidget {
  const BestFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // BestFoodTiles(
        //   name: "Fried Egg", 
        //   imageUrl: "ic_best_deal_5", 
        //   // rating: "4.9", 
        //   // numberOfRating: "200", 
        //   // price: "156.00",
        //   slug: "fried-egg",
        // ),
        // BestFoodTiles(
        //   name: "Fried Egg", 
        //   imageUrl: "ic_best_deal_3", 
        //   // rating: "4.9", 
        //   // numberOfRating: "200", 
        //   // price: "156.00",
        //   slug: "fried-egg",
        // ),
        // BestFoodTiles(
        //   name: "Fried Egg", 
        //   imageUrl: "ic_best_deal_2", 
        //   // rating: "4.9", 
        //   // numberOfRating: "200", 
        //   // price: "156.00",
        //   slug: "fried-egg",
        // ),
        // BestFoodTiles(
        //   name: "Fried Egg", 
        //   imageUrl: "ic_best_deal_4", 
        //   // rating: "4.9", 
        //   // numberOfRating: "200", 
        //   // price: "156.00",
        //   slug: "fried-egg",
        // ),
        BestFoodTiles(
          name: "Fried Egg", 
          imageUrl: "ic_best_deal_1", 
          // rating: "4.9", 
          // numberOfRating: "200", 
          // price: "156.00",
          slug: "fried-egg",
        ),
      ],
    );
  }
}