import 'package:flutter/material.dart';
import 'package:funda_1/model/restaurant.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-scren';

  final Restaurant restaurant;

  DetailScreen({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Restaurant'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(restaurant.pictureId),
            Text(restaurant.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(restaurant.city),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(restaurant.rating)
                  ],
                )
              ],
            ),
            Text(restaurant.description),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    children: restaurant.menus.foods
                        .map((e) => Text(e.name))
                        .toList()),
                Column(
                  children:
                      restaurant.menus.drinks.map((e) => Text(e.name)).toList(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
