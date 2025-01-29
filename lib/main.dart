import 'package:dars302/core/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Umra App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> popularPlaces = [
    {"title": "Paris", "image": "TravelAssets/images/places/paris.png"},
    {"title": "Makka", "image": "TravelAssets/images/places/makka.png"},
    {"title": "Malaysia", "image": "TravelAssets/images/places/malayziya.png"},
    {"title": "Dubai", "image": "TravelAssets/images/places/dubai.png"},
  ];

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
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            margin: EdgeInsets.only(left: 8),
            height: 53,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'TravelAssets/icons/search.svg',
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'TravelAssets/icons/filter.svg',
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("Notification icon tapped!");
              },
              icon: SvgPicture.asset(
                'TravelAssets/icons/notifications.svg',
                height: 30,
                width: 30,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                // Top images carousel
                SizedBox(
                  height: 120.0,
                  child: PageView.builder(
                    itemCount: topImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(topImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Mashhur joylar",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8.0),
                SizedBox(
                  height: 52.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularPlaces.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 8.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                popularPlaces[index]['image']!,
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              popularPlaces[index]['title']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                shadows: [
                                  Shadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    color: Colors.black54,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  width: double.infinity,
                  height: 634,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffF6980A), Color(0xff3BB756)],
                      stops: [0.09, 0.42],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  padding: EdgeInsets.only(top: 10,bottom: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 15),
                              SvgPicture.asset(
                                'TravelAssets/icons/discount.svg',
                                height: 36,
                                width: 36,
                              ),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shoshiling",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 0),
                                  Text(
                                    "20% gacha chegirma",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              buildTimeBox("12"),
                              Text(
                                ":",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              buildTimeBox("24"),
                              Text(
                                ":",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              buildTimeBox("30"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(spacing: 20,
                          children: [
                           BodyContainer(),
                           BodyContainer(),
                           BodyContainer(),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                BodyContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTimeBox(String time) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          time,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
