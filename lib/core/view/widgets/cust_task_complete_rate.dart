import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustTaskCompleteRate extends StatelessWidget {
  final double completionRate;

  CustTaskCompleteRate({super.key, required this.completionRate});
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 50,
      width: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            // color: Colors.yellow,
            // height: 50,
            // width: 50,
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 22,
                sectionsSpace: 0,
                sections: [
                  PieChartSectionData(
                    // value: 60,
                    value: 100 - completionRate,
                    color: Color(0xff6D6D6D),
                    title: '',
                    radius: 5,
                  ),
                  PieChartSectionData(
                    // value: 40,//نسبة المنجز
                    value: completionRate,
                    color: Color(0xff15B86C),
                    title: '',
                    radius: 5,
                  ),
                ],
              ),
            ),
          ),
          Text(
            "${completionRate}%",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
