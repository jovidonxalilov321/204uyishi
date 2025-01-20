import 'package:flutter/material.dart';

class AppColors {
  static const Qora = Color(0xff1C0F0D);
  static const Oppoq = Color(0xffFFFFFF);
  static const Yashil = Color(0xff3BB77E);
  static const Pink = Color(0xffFFC6C9);
}



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:dars302/tayyor.dart';
//
// void main() {
//   runApp(UmraSafariScreen());
// }
//
// class UmraSafariapp extends StatelessWidget {
//   const UmraSafariapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: UmraSafariScreen(),
//     );
//   }
// }
//
// class UmraSafariScreen extends StatelessWidget {
//   const UmraSafariScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.Yashil,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             width: 330,
//             padding: EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: AppColors.Oppoq,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Stack(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(16),
//                       child: Image.asset(
//                         "TravelAssets/images/offers/offers_1.jpg",
//                         width: double.infinity,
//                         height: 150,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Positioned(
//                       top: 8,
//                       right: 8,
//                       child: SvgPicture.asset(
//                           "TravelAssets/icons/heart.svg",
//                         width: 20,
//                         height: 20,
//                         color: AppColors.Oppoq,
//                       ),
//                     ),
//                     Positioned(
//                       top: 112,
//                       right: 130,
//                       child: SvgPicture.asset(
//                         "TravelAssets/icons/landing.svg",
//                         width: 25,
//                         height: 25,
//                         color: AppColors.Pink,
//                       ),
//                     ),
//                     Positioned(
//                       top: 112,
//                       right: 55,
//                       child: SvgPicture.asset(
//                         "TravelAssets/icons/flight.svg",
//                         width: 25,
//                         height: 25,
//                         color: AppColors.Pink,
//                       ),
//                     ),
//                     Positioned(
//                       top: 8,
//                       right: 8,
//                       child: Container(
//                         padding:
//                         EdgeInsets.symmetric(horizontal: 8, vertical: 6),
//                         decoration: BoxDecoration(
//                           color: AppColors.Pink,
//                           borderRadius: BorderRadius.only(16),
//                         ),
//                         child: Text(
//                             '14 kun',
//                           style: TextStyle(
//                             color: AppColors.Oppoq,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 110,
//                       left: 90,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
//                         decoration: BoxDecoration(
//                           color: AppColors.Pink,
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Text(
//                             '14 Okt',
//                           style: TextStyle(
//                             color: AppColors.Oppoq,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 110,
//                       right: 75,
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
//                         decoration: BoxDecoration(
//                           color: AppColors.Pink,
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Text(
//                             '27 Okt',
//                           style: TextStyle(
//                             color: AppColors.Oppoq,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 12),
//                 Text(
//                   'Umra Safari',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.Qora,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _buildLocationInfo('10 Msdinada'),
//                     _buildLocationInfo('5 Makakda'),
//                   ],
//                 ),
//                 SizedBox(height: 12),
//                 Text(
//                   'Sayohat Tarkibi',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildContaineredTextsvg("Sug'urta", "TravelAssets/icons/down-arrow.svg")
//                     _buildContaineredTextsvg("Chipta", "TravelAssets/icons/down-arrow.svg")
//                     _buildContaineredTextsvg("Viza", "TravelAssets/icons/down-arrow.svg")
//                     _buildContaineredTextsvg("6 +", "TravelAssets/icons/down-arrow.svg")
//                   ],
//                 ),
//                 SizedBox(height: 12),
//                 Text('Tariflar',)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
