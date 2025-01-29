import 'package:dars302/core/safari.dart';
import 'package:dars302/core/tarif.dart';
import 'package:dars302/core/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils.dart';
import 'bonus.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302,
      height: 550,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: Color(0xFF4B4B4B).withValues(alpha: 0.5), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "TravelAssets/images/places/makka.png",
                  width: double.infinity,
                  height: 169,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 6,
                right: 6,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: AppColors.Yashil,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 22,
                right: 22,
                child: SvgPicture.asset(
                  "TravelAssets/icons/heart.svg",
                  width: 16,
                  height: 16,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 135,
                left: 46,
                child: SvgPicture.asset(
                  "TravelAssets/icons/flight.svg",
                  width: 22,
                  height: 22,
                  color: AppColors.Yashil,
                ),
              ),
              Positioned(
                top: 135,
                right: 108,
                child: SvgPicture.asset(
                  "TravelAssets/icons/landing.svg",
                  width: 22,
                  height: 22,
                  color: AppColors.Yashil,
                ),
              ),
              Positioned(
                top: 18,
                left: 20,
                child: Container(
                  width: 59,
                  height: 21,
                  decoration: BoxDecoration(
                    color: AppColors.Yashil,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      '14 kun',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 136,
                right: 140,
                child: Container(
                  width: 61,
                  height: 21,
                  decoration: BoxDecoration(
                    color: AppColors.Yashil,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      '14 Okt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 136,
                right: 45,
                child: Container(
                  width: 61,
                  height: 21,
                  decoration: BoxDecoration(
                    color: AppColors.Yashil,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      '27 Okt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Umra Safari',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 12),
          Row(
            spacing: 10,
            children: [
              InfoBox(sana: "10", city: "Madinada"),
              InfoBox(sana: "5", city: "Makkada"),

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
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              Bonus(text: "Sug'urta"),
              Bonus(text: "Chipta"),
              Bonus(text: "Viza"),
              OthersBox(),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Tariflar",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TarifBox(type: "Ekonom", cost: "1200\$", oldcost: "1300\$"),
                TarifBox(type: "Standart", cost: "1400\$", oldcost: "1600\$"),
                TarifBox(type: "Standart", cost: "1400\$", oldcost: "1600\$"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: TextButton(
              child: Container(
                width: 274,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.Yashil,
                ),
                child: Center(
                  child: Textbox(
                    text: "Batafsil",
                    color: Colors.white,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
