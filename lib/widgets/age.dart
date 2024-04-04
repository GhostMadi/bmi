import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  int age;
  Function(int) ageUp;
  Age({required this.ageUp, required this.age, super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.3,
      height: size.height / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11), color: Colors.black),
      child: Column(
        children: [
          SizedBox(height: 30),
          const Text(
            'Age',
            style: TextStyle(
                fontFamily: 'Bungee', fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            '${widget.age}',
            style: const TextStyle(
                fontFamily: 'Bungee', fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 7,
                width: size.width / 7,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.age -= 1;
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                  ),
                  color: Colors.black,
                ),
              ),
              SizedBox(width: size.width / 10),
              Container(
                height: size.height / 7,
                width: size.width / 7,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.age += 1;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
