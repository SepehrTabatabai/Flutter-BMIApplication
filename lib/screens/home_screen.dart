import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/constants/constants.dart';
import 'package:flutter_bmi_calc/screens/BMI.dart';
import 'package:flutter_bmi_calc/widgets/bacground_shape_right.dart';
import 'package:flutter_bmi_calc/widgets/background_shape_left.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// For Push And pop Screens
void navigateToHome(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) {
        return page;
      },
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String resultText = "";

  double withGood = 100;
  double withBad = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.9,
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: orangeBackGround),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: orangeBackGround),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightController.text);
                  final height = double.parse(heightController.text);

                  setState(() {
                    resultBMI = weight / (height * height);
                    if (resultBMI > 25) {
                      withBad = 270.0;
                      withGood = 50.0;
                      resultText = "Over weight";
                    } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                      withBad = 50.0;
                      withGood = 270.0;
                      resultText = "Normal";
                    } else {
                      withBad = 60.0;
                      withGood = 60.0;
                      resultText = "Low weight";
                    }
                    ;
                  });
                },
                child: Text(
                  " Calculate ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                "${resultBMI.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              Text(
                "$resultText ",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: orangeBackGround),
              ),
              SizedBox(height: 80),
              RightShape(width: withBad),
              SizedBox(height: 15),
              LeftShape(width: withGood),
              SizedBox(width: 20.0),
              Divider(
                height: 90,
                thickness: 2,
                color: Colors.black,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: orangeBackGround,
                ),
                onPressed: () {
                  navigateToHome(context, BmiScreen());
                },
                child: Text(
                  "About BMI",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
