import 'package:flutter/material.dart';
import 'package:freeshare/service/theme_service.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MarketPriceGraph extends StatelessWidget {
  const MarketPriceGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '내차 예상시세',
          style: context.typo.headline1.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          '1620 ~ 1720만원',
          style: TextStyle(
            fontSize: 40,
            color: Color(0xFF476DF6),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                  color: Color(0xFFbfcdfb),
                  shape: BoxShape.circle
              ),
            ),
            const Text(
              '2015년형 디젤 4WD 익스클루시브 스페셜',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildChart(),
      ],
    );
  }

  Widget _buildChart() {
    final priceFormat = NumberFormat("#만원"); // Create the number format
    final distanceFormat = NumberFormat("#.#");

    String customDistanceFormatter(num value) {
      if (value >= 10000) {
        double result = value / 10000;
        return '${distanceFormat.format(result)}만km';
      } else {
        return '${distanceFormat.format(value)}km';
      }
    }

    return SfCartesianChart(
      primaryXAxis: NumericAxis(),
      primaryYAxis: NumericAxis(
        numberFormat: priceFormat,
      ),
      series: <ChartSeries>[
        ScatterSeries<CarPrice, num>(
          dataSource: carPriceMockData,
          xValueMapper: (CarPrice carPrice, _) => carPrice.distance,
          yValueMapper: (CarPrice carPrice, _) => carPrice.price,
          name: 'Car Price',
          markerSettings: const MarkerSettings(isVisible: true),
        ),
        SplineSeries<CarPrice, num>(
          dataSource: carPriceMockData,
          xValueMapper: (CarPrice carPrice, _) => carPrice.distance,
          yValueMapper: (CarPrice carPrice, _) => carPrice.price,
          name: 'Trendline',
          markerSettings: const MarkerSettings(isVisible: false),
          enableTooltip: false,
          trendlines: <Trendline>[
            Trendline(
              type: TrendlineType.polynomial,
              // You can choose different trendline types
              width: 2,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}

class CarPrice {
  final num price;
  final num distance;

  CarPrice(this.price, this.distance);
}

final carPriceMockData = [
  CarPrice(2000, 50000),
  CarPrice(1500, 80000),
  CarPrice(1600, 80000),
  CarPrice(1600, 80000),
  CarPrice(1400, 100000),
  CarPrice(1500, 100000),
  CarPrice(1600, 100000),
  CarPrice(1500, 120000),
  CarPrice(1300, 130000),
  CarPrice(1300, 130000),
  CarPrice(1350, 135000),
  CarPrice(1250, 135000),
  CarPrice(1280, 140000),
  CarPrice(1350, 140000),
  CarPrice(1200, 150000),
  CarPrice(1300, 150000),
  CarPrice(1300, 150000),
  CarPrice(1050, 170000),
  CarPrice(1100, 175000),
  CarPrice(1150, 180000),
  CarPrice(1350, 190000),
  CarPrice(1050, 200000),
  CarPrice(1000, 200000),
  CarPrice(1100, 200000),
  CarPrice(950, 230000),
  CarPrice(850, 230000),
  CarPrice(900, 250000),
];
