// lib/widgets/travel_info.dart
import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Makkada va Madinada konteynerlari
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildLocationContainer("Madinada", "10", "Kun"),
            SizedBox(width: 10),
            _buildLocationContainer("Makkada", "5", "Kun"),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Sayohat Tarkibi",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildLocationContainer(String location, String days, String timeUnit) {
    return Container(
      width: 108,
      height: 23,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          color: AppColors.Yashil,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 1,
            bottom: 0,
            child: Container(
              width: 18,
              height: 20,
              decoration: BoxDecoration(
                color: AppColors.Yashil,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  "TravelAssets/icons/calendar.svg",
                  width: 15,
                  height: 15,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 0,
            child: Column(
              children: [
                Text(
                  days,
                  style: TextStyle(
                    color: AppColors.Yashil,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                Text(
                  timeUnit,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.Yashil,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 35,
            top: 0,
            child: Text(
              location,
              style: TextStyle(
                color: AppColors.Yashil,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
