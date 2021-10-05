import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:previsao_tempo/models/forecast.dart';

class Weather extends StatelessWidget {
  final Forecast forecast;

  const Weather(
    this.forecast
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Text(
            this.forecast.dayOfWeek
          ),
          SizedBox(
            height: 6,
          ),
          SvgPicture.asset(
            this.forecast.icon
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "${this.forecast.temperature}°"
          ),
        ],
      ),
    );
  }
}