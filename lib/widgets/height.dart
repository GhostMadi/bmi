// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  double height;
  Function(double) heightUp;
  Height({required this.heightUp, required this.height, super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(11)),
        height: size.height / 4,
        width: size.width / 1.13,
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              'Height',
              style: TextStyle(
                  fontFamily: 'Bungee', fontSize: 30, color: Colors.white),
            ),
            Text(
              '${widget.height.round()}cm',
              style: const TextStyle(
                  fontFamily: 'Bungee', fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 15),
            Slider(
                thumbColor: Colors.red,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                value: widget.height,
                max: 300,
                onChanged: (double value) {
                  setState(() {
                    widget.height = value;
                    widget.heightUp(widget.height);
                  });
                }),
          ],
        ));
  }
}
