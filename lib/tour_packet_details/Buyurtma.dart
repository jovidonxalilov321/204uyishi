import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Buyurtma extends StatelessWidget {
  const Buyurtma({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.Yashil,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(
                0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2, left: 50),
            child: SvgPicture.asset(
              'TravelAssets/icons/shopping-bag.svg',
              width: 20,
              height: 20,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2, left: 20),
            child: Text(
              'Buyurtm berish',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
