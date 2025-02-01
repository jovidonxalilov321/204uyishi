import 'package:dars302/register/pinpage.dart';
import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              SvgPicture.asset(
                'TravelAssets/icons/back-arrow.svg',
                width: 24,
                height: 24,
                color: AppColors.Yashil,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Center(
              child: SvgPicture.asset(
                'TravelAssets/icons/airlogo.svg',
                width: 80,
                height: 80,
                color: Color(0xffFAFAFA),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                "Ro'yxatdan O'tish",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 15),
                    child: SvgPicture.asset(
                      'TravelAssets/icons/Call.svg',
                      width: 20,
                      height: 20,
                      color: Color(0xff4B4B4B),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9+]')),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Telefon Raqamingizni kiriting',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color(0xff9E9E9E),
                          fontSize: 14,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PagePin()),
                );
              },
              child: Container(
                width: 380,
                height: 58,
                decoration: BoxDecoration(
                    color: AppColors.Yashil,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(
                    "Ro'yxatdan O'tish",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
