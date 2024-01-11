import 'package:flutter/material.dart';
import 'package:flutter_application_restaurants/widget/restaurant_list_item.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        RestaurantList(
            image:
                'https://ayeryhoyrevista.com/wp-content/uploads/2020/08/restaurante.jpg',
            averagerating: 4.5,
            address: "Calle Bermejales",
            halfprice: 15.6,
            name: "Casa Manuel"),
        RestaurantList(
            image:
                'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2022/01/31/16436585396739.jpg',
            averagerating: 2,
            address: "Xin Hou 1223",
            halfprice: 15.6,
            name: "Xian Xo Huh"),
        RestaurantList(
            image:
                'https://ayeryhoyrevista.com/wp-content/uploads/2020/08/restaurante.jpg',
            averagerating: 4,
            address: "Calle Lagarto",
            halfprice: 23,
            name: "Casa Manuel"),
        RestaurantList(
            image:
                'https://ayeryhoyrevista.com/wp-content/uploads/2020/08/restaurante.jpg',
            averagerating: 5,
            address: "Calle Lagarto",
            halfprice: 15.6,
            name: "Casa Manuel"),
      ]),
    );
  }
}
