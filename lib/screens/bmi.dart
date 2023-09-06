import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/constants/constants.dart';

// Second Screen

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0.9,
          title: Text(
            "About BMI",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 20.0,
                ),
                Text(
                  "What IS BMI??",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "The body mass index (BMI) is a measure that uses your height and weight to work out if your weight is healthy.The BMI calculation divides an adult's weight in kilograms by their height in metres squared. For example, A BMI of 25 means 25kg/m2.BMI ranges",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: white,
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 2,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("assets/images/Bmi.jpg"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "For most adults, an ideal BMI is in the 18.5 to 24.9 range",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "For children and young people aged 2 to 18, the BMI calculation takes into account age and gender as well as height and weight",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 50.0),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: orangeBackGround,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Back To Main Page",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
