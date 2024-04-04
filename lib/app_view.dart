import 'package:bmi_flutter/widgets/age.dart';
import 'package:bmi_flutter/widgets/genders.dart';
import 'package:bmi_flutter/widgets/height.dart';
import 'package:bmi_flutter/widgets/weight.dart';
import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

String? gender;
double height = 0;
int age = 0;
double wight = 0;
double result = 0;

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              Genders(gender: (gender) {
                setState(() {
                  gender = gender;
                });
              }),
              Height(
                height: height,
                heightUp: (value) {
                  setState(() {
                    height = value;
                    print(height);
                  });
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Age(
                      age: age,
                      ageUp: (value) {
                        setState(() {
                          age = value;
                        });
                      }),
                  const SizedBox(width: 5),
                  Weight(
                    wight: wight,
                    weightUp: (value) {
                      setState(() {
                        wight = value;
                        print(wight);
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                width: size.width / 1.15,
                height: size.height / 6,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      print('$wight $height');
                      height = height / 100;
                      result = wight / (height * height);

                      setState(() {
                        result = result;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.black,
                        content: Text(
                          'your bmi is:${result.round()}',
                          style: const TextStyle(
                              fontFamily: 'Bungee',
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ));
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                          fontFamily: 'Bungee',
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
