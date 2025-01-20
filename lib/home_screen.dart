import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'umra.dart';
import 'box.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> popularPlaces = [
    {"title": "Parij", "image": "TravelAssets/images/places/paris.png"},
    {"title": "Makka", "image": "TravelAssets/images/places/makka.png"},
    {"title": "Malasia", "image": "TravelAssets/images/places/malayziya.png"},
    {"title": "Dubai", "image": "TravelAssets/images/places/dubai.png"},
  ];

  final List<dynamic> topImages = [
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

  final List<UmraOffer> umraOffers = [
    UmraOffer(
      title: "Umra Safari",
      duration: "14 kun",
      dateRange: "14 Okt - 27 Okt",
      madina: "10 Madinada",
      makkada: "5 Makkada",
      economyPrice: "1200\$",
      standardPrice: "1400\$",
      premiumPrice: "1600\$",
      image: 'TravelAssets/images/offers/offers_1.jpg',
    ),
    UmraOffer(
      title: "Umra Safari Max",
      duration: "10 kun",
      dateRange: "20 Okt - 30 Okt",
      madina: "8 Madinada",
      makkada: "4 Makkada",
      economyPrice: "1000\$",
      standardPrice: "1300\$",
      premiumPrice: "1500\$",
      image: 'TravelAssets/images/offers/offers_1.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Icon(Icons.notifications_none, color: Colors.grey),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130.0,
              child: PageView.builder(
                itemCount: topImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Text(
                "Mashhur Joylar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularPlaces.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            popularPlaces[index]['image']!,
                            width: 104,
                            height: 52,
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shoshiling\n20% gacha chegirma",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Row(
                      children: [
                        TimeBox("12"),
                        Text(":"),
                        TimeBox("24"),
                        Text(":"),
                        TimeBox("30"),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Text(
                "Umra Safari",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: umraOffers.length,
              itemBuilder: (context, index) {
                final offer = umraOffers[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 4.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                        child: Image.asset(
                          offer.image,
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          offer.title,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "Duration: ${offer.duration}",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(),
                            Text(
                              "Economy: ${offer.economyPrice}",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          "Date: ${offer.dateRange}",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Makkah: ${offer.makkada} | Madinah: ${offer.madina}",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            'Batafsil...',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 24,
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              height: 24,
              width: 24,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/orders.svg',
              height: 24,
              width: 24,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/wallet.svg',
              height: 24,
              width: 24,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              height: 24,
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.green,
        showUnselectedLabels: true,
      ),
    );
  }
}
