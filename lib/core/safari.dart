import 'package:dars302/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.sana,
    required this.city,
  });

  final String sana, city;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      width: 108,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.Yashil,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        spacing: 2,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.Yashil,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: SvgPicture.asset(
                "TravelAssets/icons/calendar.svg",
                width: 14,
                height: 14,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                sana,
                style: TextStyle(
                  color: AppColors.Yashil,
                  fontSize: 12,
                  height: 1,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "kun",
                style: TextStyle(
                  color: AppColors.Yashil,
                  fontSize: 4,
                  height: 1,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Textbox(
            text: city,
            color: AppColors.Yashil,
            size: 14,
            weight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
