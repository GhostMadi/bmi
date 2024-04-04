import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Genders extends StatefulWidget {
  Function(String)? gender;
  Genders({required this.gender, super.key});

  @override
  State<Genders> createState() => _GendersState();
}

class _GendersState extends State<Genders> {
  List<String> genders = ["Women", "Man"];
  String selected = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height / 5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: genders.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selected = genders[index];
                    widget.gender!(selected);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width / 2.35,
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      color: selected == genders[index]
                          ? Colors.white
                          : Colors.black,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(
                      child: Text(
                        genders[index],
                        style: TextStyle(
                          color: selected == genders[index]
                              ? Colors.black
                              : Colors.white,
                          fontFamily: 'Bungee',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
