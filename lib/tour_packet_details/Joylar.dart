import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Joylar extends StatelessWidget {
  const Joylar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 250,
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
                top: 18,
                left: 46,
                child: Text(
                  'Uchish',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 46,
                child: Text(
                  'Qayerdan',
                  style: TextStyle(
                    color: Color(0xffC4C4C4),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 75,
                left: 46,
                child: Text(
                  'Qayerga',
                  style: TextStyle(
                    color: Color(0xffC4C4C4),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 38,
                child: Text(
                  'Toshkent',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 75,
                right: 46,
                child: Text(
                  'Madina',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 21,
                right: 20,
                child: Text(
                  '8:30 am',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
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
            'TravelAssets/icons/plane1.svg',
            width: 129,
            height: 75,
          ),
        ),
      ],
    );
  }
}
