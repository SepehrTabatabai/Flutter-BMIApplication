import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;

  const RightShape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          " Negative ",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 17, 0),
          ),
        ),
        SizedBox(width: 5),
        Container(
          height: 40.0,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
