import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils.dart';

class Bonus extends StatelessWidget {
  const Bonus({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      padding: EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.Yashil,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.Yashil),
            child: Center(
              child: SvgPicture.asset(
                "TravelAssets/icons/tick.svg",
                fit: BoxFit.cover,
                width: 9.41,
                height: 7.06,
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              color: AppColors.Yashil,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: "Urbanist",
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}

class OthersBox extends StatelessWidget {
  const OthersBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: AppColors.Yashil,
          width: 1,
        ),
      ),
      child: Center(
        child: Container(
          width: 29,
          height: 15,
          decoration: BoxDecoration(
            color: AppColors.Yashil,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "6+",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                fontFamily: "Urbanist",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
