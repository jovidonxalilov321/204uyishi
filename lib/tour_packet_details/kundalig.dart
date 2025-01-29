import 'package:flutter/material.dart';

import '../core/text.dart';

class SayohatKundaligi extends StatelessWidget {
  const SayohatKundaligi({
    super.key,
    required this.kun,
    required this.oy,
  });

  final String kun, oy;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 63,
          height: 45,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 0,
                children: [
                  Textbox(
                    text: kun,
                    color: Colors.black,
                    size: 15,
                    weight: FontWeight.bold,
                  ),
                  Textbox(
                    text: oy,
                    color: Colors.black,
                    size: 10,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
