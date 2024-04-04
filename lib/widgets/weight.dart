import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  double wight;
  Function(double) weightUp;
  Weight({required this.weightUp, required this.wight, super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.33,
      height: size.height / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11), color: Colors.black),
      child: Column(
        children: [
          SizedBox(height: 30),
          const Text(
            'Weight',
            style: TextStyle(
                fontFamily: 'Bungee', fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            '${widget.wight}kg',
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
                      widget.wight -= 1;
                      widget.weightUp(widget.wight);
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
                      widget.wight += 1;
                      widget.weightUp(widget.wight);
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
