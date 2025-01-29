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
            color: Colors.black.withOpacity(0.1), // Soyaning rangi
            blurRadius: 10, // Tarqalish radiusi
            spreadRadius: 2, // Soyaning kengligi
            offset: Offset(
                0, -4), // Soyaning joylashuvi (0 - X, -4 - Y yo‘nalishda)
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
