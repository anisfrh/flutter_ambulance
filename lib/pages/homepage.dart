import 'package:app_food_order/widgets/best_food.dart';
import 'package:app_food_order/widgets/popular_food.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 112, 155),
        elevation: 0,
        title: const Text(
          "Ambulance Bergerak",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFXJjNtHFaPOckBMT4uitdFsmnq4TGzGffCFdfyN843A&s'), 
              ),
            ),
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 0,
                      color: Colors.blueAccent,
                      style: BorderStyle.none,
                    ),
                  ),
                  // filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  suffixIcon: const Icon(
                    Icons.sort,
                    color: Colors.blue,
                  ),
                  hintText: "Cari Layanan dan Tujuan"
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Popular Food Widget
            const PopularFoodWidget(),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Activity Gallery",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            // Best Foods Widget
            BestFoodList(),
          ],
        ),
      ),
    );
  }
}
