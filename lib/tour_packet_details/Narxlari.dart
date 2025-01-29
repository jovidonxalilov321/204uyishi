import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Narxlari extends StatelessWidget {
  const Narxlari({super.key, required this.cost, required this.oldcost, required this.tarif, required this.malumot});

  final String cost, oldcost, tarif, malumot;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 170,
          height: 254,
          decoration: BoxDecoration(
            color: AppColors.Yashil,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 2),
                child: Container(
                  width: 26,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Color(0xffE4DC19),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '20%',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 40),
                child: Text(
                  cost,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 29, left: 65),
                child: Text(
                  'Afzalliklari',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13, left: 100),
                child: Text(
                  oldcost,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 56, left: 10),
                child: SvgPicture.asset(
                  'TravelAssets/icons/plane.svg',
                  width: 17,
                  height: 16,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 53, left: 35),
                child: Text(
                  "To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 88, left: 10),
                child: SvgPicture.asset(
                  'TravelAssets/icons/bus.svg',
                  width: 16,
                  height: 15,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 85, left: 35),
                child: Text(
                  "Zamonaviy va qulay avtobuslar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 115, left: 10),
                child: SvgPicture.asset(
                  'TravelAssets/icons/medical.svg',
                  width: 16,
                  height: 15,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 115, left: 35),
                child: Text(
                  "Tibbiy sug’urta",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 138, left: 10),
                child: SvgPicture.asset(
                  'TravelAssets/icons/people.svg',
                  width: 16,
                  height: 15,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 138, left: 35),
                child: Text(
                  "Tajribali yo’l boshchi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 170, left: 10),
                child: Text(
                  malumot,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          left: 33,
          right: 29,
          child: Container(
            width: 77,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.Yashil, width: 1),
            ),
            child: Center(
              child: Text(
                tarif,
                style: TextStyle(
                    color: AppColors.Yashil,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
