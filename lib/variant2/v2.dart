import 'package:flutter/material.dart';

class V0 extends StatefulWidget {
  @override
  State<V0> createState() => _V0State();
}

class _V0State extends State<V0> {
  double _topRight = 0.0;
  double _topLeft = 0.0;
  double _bottomRight = 0.0;
  double _bottomLeft = 0.0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
const SizedBox(height: 100),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_topLeft),
                  topRight: Radius.circular(_topRight),
                  bottomLeft: Radius.circular(_bottomLeft),
                  bottomRight: Radius.circular(_bottomRight),

                ),
              ),
            ),
            const SizedBox(height: 30),


            Row(
              children: [
                const Text("Top Left Radius: "),
                Text(
                  _topLeft.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(value: _topLeft, min: 0, max: 100, onChanged: (v) => setState(() => _topLeft = v)),
          Row(
              children: [
                const Text("Top Right Radius: "),
                Text(
                  _topRight.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(value: _topRight, min: 0, max: 100, onChanged: (v) => setState(() => _topRight = v)),
          Row(
              children: [
                const Text("Bottom Left Radius: "),
                Text(
                  _bottomLeft.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(value: _bottomLeft, min: 0, max: 100, onChanged: (v) => setState(() => _bottomLeft = v)),
          Row(
              children: [
                const Text("Bottom Right Radius: "),
                Text(
                  _bottomRight.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(value: _bottomRight, min: 0, max: 100, onChanged: (v) => setState(() => _bottomRight = v)),
         ],
        ),
      ),
    );
  }
}
