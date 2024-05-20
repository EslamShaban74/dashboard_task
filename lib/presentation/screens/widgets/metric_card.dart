import 'dart:math';

import 'package:flutter/material.dart';

class MetricCard extends StatelessWidget {
  MetricCard({super.key, required this.index});

  final int index;
  String title = "";
  String value = "";
  IconData icon = Icons.help;
  Color color = Colors.grey;

  void setData() {
    switch (index) {
      case 0:
        title = 'Customers';
        value = '54,214';
        icon = Icons.person_outline;
        color = Colors.teal;
        break;
      case 1:
        title = 'Orders';
        value = '7,543';
        icon = Icons.shopping_cart;
        color = Colors.blue;
        break;
      case 2:
        title = 'Revenue';
        value = '\$9,254';
        icon = Icons.attach_money_sharp;
        color = Colors.red;
        break;
      case 3:
        title = 'Growth';
        value = '+20.6%';
        icon = Icons.task;
        color = Colors.deepPurpleAccent;
        break;
      case 4:
        title = 'Conversations';
        value = '9.2%';
        icon = Icons.monetization_on;
        color = Colors.yellow;
        break;
      case 5:
        title = 'Balance';
        value = '\$168.5K';
        icon = Icons.people;
        color = Colors.grey;
        break;
      default:
        title = '';
        value = '';
        icon = Icons.help;
        color = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    setData();
    return Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(title, style: const TextStyle(fontSize: 14)),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.arrow_upward, size: 10),
                            SizedBox(width: 4),
                            Text("2,105"),
                          ],
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Expanded(
                        child: Text(
                          "Since last month",
                          style: TextStyle(fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Transform(
              transform: Matrix4.rotationZ(pi / 4),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Transform(
                  transform: Matrix4.rotationZ(-pi / 4),
                  alignment: Alignment.center,
                  child: Icon(icon, size: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
