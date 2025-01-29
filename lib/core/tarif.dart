import 'package:dars302/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils.dart';
import 'bonus.dart';

class TarifBox extends StatelessWidget {
  const TarifBox({
    super.key,
    required this.type,
    required this.cost,
    required this.oldcost,
  });

  final String type, cost, oldcost;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 131,
          height: 95,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.Yashil,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Column(
                spacing: 0.5,
                children: [
                  Textbox(
                    text: cost,
                    color: Colors.white,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  Textbox(
                    text: "Afzalliklar",
                    color: Colors.white,
                    size: 7,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              Container(
                width: 111,
                height: 15,
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
                      "Transport xizmati",
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
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72.5,
                    height: 15,
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
                          "Nonushta",
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
                  ),
                  OthersBox(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -10,
          left: 33,
          right: 29,
          child: Container(
            width: 65,
            height: 19,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.Yashil, width: 1),
            ),
            child: Center(
              child: Textbox(
                text: type,
                color: AppColors.Yashil,
                size: 12,
                weight: FontWeight.w900,
              ),
            ),
          ),
        ),
        Positioned(
          left: 31,
          bottom: 6,
          right: 35,
          child: Container(
            width: 65,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: -1,
          left: 54,
          right: 57,
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
        Positioned(
          top: 14,
          right: 15,
          child: Text(
            oldcost,

            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Urbanist",
              fontSize: 9,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
