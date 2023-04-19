import 'package:flutter/material.dart';
//import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/models/meal.dart';

class MealCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int duration;
  final Affordability affordability;
  final Complexity complexity;

  MealCard({
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.affordability,
    required this.complexity,
  });

  String get complexText {
//  if (complexity == Complexity.Simple){
//   return 'A';
//  } if (complexity == Complexity.Challenging) {
//       return "B";
//     }
//  if (complexity == Complexity.Hard){
//   return "C";
//  }
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;

      default:
        return 'Unknown';
    }
  }

  String get affordabilitytext {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;

      default:
        return 'Unknown';
    }
  }

  void inkCard() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          inkCard();
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 250,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Color.fromARGB(153, 0, 0, 0),
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration min")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text(complexText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text(affordabilitytext)
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
