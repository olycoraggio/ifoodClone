import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';

import 'package:ifood_flutter_clone/models/restaurant.dart';

List<Restaurant> restaurant = [
  Restaurant(
    category: 'Japonesa',
    deliveryTaxe: 'R\$ 5,99',
    distance: '4,1 km',
    favorite: false,
    name: 'Restaurante Japones',
    photoUrl:
        'https://blog.duogourmet.com.br/wp-content/uploads/2019/07/37-Duo-Gourmet-sushi-1125x675.jpg',
    rate: 4.6,
    time: [60, 80],
  )
];

class RestaurantItemComponent extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantItemComponent({
    Key key,
    @required this.restaurant,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              restaurant.photoUrl,
            ),
            radius: 30,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(restaurant.name),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    restaurant.rate.toString(),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: 9,
                      color: AppColors.grey700,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(restaurant.category),
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: 9,
                      color: AppColors.grey700,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(restaurant.distance),
                ],
              ),
              Row(
                children: [
                  Text(
                    restaurant.time[0].toString(),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('-'),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    restaurant.time[1].toString(),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '•',
                    style: TextStyle(
                      fontSize: 9,
                      color: AppColors.grey700,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(restaurant.deliveryTaxe),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
