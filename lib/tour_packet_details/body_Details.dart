import 'package:dars302/core/safari.dart';
import 'package:dars302/tour_packet_details/Buyurtma.dart';
import 'package:dars302/tour_packet_details/Joylar.dart';
import 'package:dars302/tour_packet_details/Manzil.dart';
import 'package:dars302/tour_packet_details/Narxlari.dart';
import 'package:dars302/tour_packet_details/kundalig.dart';
import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/bonus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final List<String> topImages = [
    'TravelAssets/images/offers/offers_1.jpg',
    'TravelAssets/images/offers/offers_2.jpg',
    'TravelAssets/images/offers/offers_3.jpg',
    'TravelAssets/images/offers/offers_4.jpg',
    'TravelAssets/images/offers/offers_5.jpg',
    'TravelAssets/images/offers/offers_6.jpg',
    'TravelAssets/images/offers/offers_7.jpg',
    'TravelAssets/images/offers/offers_8.jpg',
    'TravelAssets/images/offers/offers_9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'TravelAssets/icons/back-arrow.svg',
                  width: 20,
                  height: 20,
                  color: Color(0xff000000),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: 280,
            child: PageView.builder(
              itemCount: topImages.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(.0),
                    image: DecorationImage(
                      image: AssetImage(topImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Umra Safari",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli). "
                    "Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati, "
                    "Zamzam suvi (5 litr).",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoBox(sana: '10', city: 'Madinada'),
                SizedBox(width: 16),
                InfoBox(sana: '5', city: 'Makkada'),
              ],
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 15.5),
            child: Text(
              "Sayohat Tarkibi",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 15.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bonus(text: "Sug'urta"),
                SizedBox(width: 4),
                Bonus(text: "Chipta"),
                SizedBox(width: 4),
                Bonus(text: "Viza"),
                SizedBox(width: 4),
                OthersBox(),
              ],
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 15.5),
            child: Text(
              'Sayohat Kundaligi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 15.5, right: 15.5),
            child: Container(
              width: 397,
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                          SizedBox(width: 4),
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                          SizedBox(width: 4),
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                          SizedBox(width: 4),
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                          SizedBox(width: 4),
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                          SizedBox(width: 4),
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                          SizedBox(width: 4),
                          SayohatKundaligi(kun: '2 kun', oy: '1-Okt'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9,
                        left: 60,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Joylar(),
                          SizedBox(height: 10),
                          Manzillar(
                            image: 'TravelAssets/images/Rectangle2.png',
                            manzil: 'New Madina Hotel',
                            masofa: '150M',
                            vaqt: '11:30 am',
                            malumot:
                                'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
                            qayer: 'Mehmonxona',
                            svg: 'TravelAssets/icons/map-pin.svg',
                            icon: 'TravelAssets/icons/ziyorat1.svg',
                          ),
                          SizedBox(height: 10),
                          Manzillar(
                            image: 'TravelAssets/images/Rectangle1.png',
                            manzil: 'Arofat to’gi',
                            masofa: '',
                            vaqt: '8:30 am',
                            malumot:
                                'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
                            qayer: 'Ziyoreatgoh',
                            svg: '',
                            icon: 'TravelAssets/icons/hotel1.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.5),
            child: Text(
              'Sayohat Kundaligi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.5),
            // Ikkala tomondan bo'sh joy qo'shish
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Ikki tarafga joylash
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Narxlari(
                    cost: '1200\$',
                    oldcost: '1300\$',
                    tarif: 'Ekonom',
                    malumot:
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus fugit, iste unde voluptatem tempore vero eveniet quia conseq "),
                Narxlari(
                    cost: '1400\$',
                    oldcost: '1600\$',
                    tarif: 'Standart',
                    malumot: ''),
              ],
            ),
          ),
          Container(
            width: 20,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: 380,
        height: 78,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 16, left: 20),
          child: Row(
            spacing: 10,
            children: [
              Column(
                children: [
                  Text(
                    'Jami qiymat',
                    style: TextStyle(
                        color: Color(0xff757575),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1200\$',
                    style: TextStyle(
                        color: AppColors.Yashil,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 10),
                child: Buyurtma(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
