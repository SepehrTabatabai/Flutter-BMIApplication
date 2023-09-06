import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;

  const LeftShape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40.0,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
            color: Color.fromARGB(255, 1, 139, 5),
          ),
        ),
        Text(
          " Positive ",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
