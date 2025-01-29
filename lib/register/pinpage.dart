import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagePin(),
    );
  }
}

class PagePin extends StatefulWidget {
  const PagePin({super.key});

  @override
  State<PagePin> createState() => _PagePinState();
}

class _PagePinState extends State<PagePin> {
  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  List<Color> borderColors = List.generate(4, (index) => Colors.grey.shade400);

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < focusNodes.length; i++) {
      focusNodes[i].addListener(() {
        setState(() {
          if (focusNodes[i].hasFocus) {
            borderColors[i] = AppColors.Yashil;
            for (int j = 0; j < 4; j++) {
              if (j != i) {
                borderColors[j] = Colors.grey.shade400;
              }
            }
          }
        });
      });
    }
  }

  @override
  void dispose() {
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

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
                child: SvgPicture.asset(
                  'TravelAssets/icons/back-arrow.svg',
                  width: 20,
                  height: 20,
                  color: AppColors.Yashil,
                ),
              ),
              SizedBox(width: 16),
              Text(
                'Kodni kiriting',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Text(
              'Sms kodni kiriting',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: 75,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColors[index], width: 2),
                ),
                alignment: Alignment.center,
                child: TextField(
                  controller: controllers[index],
                  focusNode: focusNodes[index],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLength: 1,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    counterText: "",
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                  obscuringCharacter: '•',

                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      if (index < 3) {
                        FocusScope.of(context)
                            .requestFocus(focusNodes[index + 1]);
                      }
                    }
                  },
                ),
              );
            }),
          ),
          SizedBox(height: 100),
          Container(
            width: 350,
            height: 58,
            decoration: BoxDecoration(
              color: AppColors.Yashil,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'Tasdiqlash',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
