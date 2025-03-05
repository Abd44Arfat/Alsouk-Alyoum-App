import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CurrencyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
          
          ),
          child: LineChart( 
            LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: false),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
              
                  spots: [
                    FlSpot(0, 56.6),
                    FlSpot(1, 56.8),
                    FlSpot(2, 56.7),
                    FlSpot(3, 55),
                    FlSpot(4, 56.9),
                    FlSpot(5, 56.6),
                 
                  ],
                  isCurved: true,
                  color: Colors.blueAccent,
                  dotData: FlDotData(show: true),
               
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
