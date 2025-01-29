import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils.dart';

class Manzillar extends StatelessWidget {
  const Manzillar(
      {super.key,
      required this.image,
      required this.manzil,
      required this.masofa,
      required this.vaqt,
      required this.malumot,
      required this.qayer,
      required this.svg,
      required this.icon});

  final String image, manzil, masofa, vaqt, malumot, qayer, svg, icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 279,
          height: 115,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 35,
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 34,
                left: 35,
                child: Container(
                  width: 77,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 120,
                child: Container(
                  width: 130,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    malumot,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 35,
                child: Text(
                  qayer,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 31,
                right: 44,
                child: SvgPicture.asset(
                  svg,
                  width: 9,
                  height: 11,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 30,
                right: 15,
                child: Text(
                  masofa,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 14,
                right: 16,
                child: Text(
                  vaqt,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 32,
                left: 120,
                child: Text(
                  manzil,
                  style: TextStyle(
                    color: Color(0xffC4C4C4),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 135,
                bottom: 12,
                right: 50,
                child: Container(
                  width: 65,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 165,
                right: 80,
                child: Container(
                  width: 16,
                  height: 16,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: AppColors.Yashil,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: AppColors.Yashil,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "TravelAssets/icons/down-arrow.svg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: -80,
          top: 10,
          child: SvgPicture.asset(
            icon,
            width: 129,
            height: 75,
          ),
        ),
      ],
    );
  }
}
