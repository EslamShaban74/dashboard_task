import 'package:flutter/material.dart';

import 'bar_chart_card.dart';
import 'chart_card.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth < 600) {
      // Stacked layout for small screens
      return const Column(
        children: [
          ChartCard(),
          SizedBox(height: 16),
          BarChartCard(),
        ],
      );
    } else {
      return const Row(
        children: [
          Expanded(child: ChartCard()),
          SizedBox(width: 16),
          Expanded(child: BarChartCard()),
        ],
      );
    }
  }
}
