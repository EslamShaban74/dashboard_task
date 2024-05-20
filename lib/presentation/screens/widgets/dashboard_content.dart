import 'package:flutter/material.dart';

import 'chart_section.dart';
import 'dashboard_header.dart';
import 'metric_card.dart';

class DashboardContent extends StatelessWidget {
  DashboardContent({super.key});

  final GlobalKey textFieldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardHeader(),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount;

                  if (constraints.maxWidth < 600) {
                    crossAxisCount = 1; // Mobile phone size
                  } else if (constraints.maxWidth < 1200) {
                    crossAxisCount = 2; // Tablet size
                  } else {
                    crossAxisCount = 3; // Desktop size
                  }
                  return GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      childAspectRatio:
                          (constraints.maxWidth / crossAxisCount) / 200,
                    ),
                    itemBuilder: (context, index) {
                      return MetricCard(index: index);
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              ChartSection(constraints: constraints),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }






}
