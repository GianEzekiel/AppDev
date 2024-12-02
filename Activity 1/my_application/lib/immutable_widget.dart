import 'package:flutter/material.dart';
import 'dart:math';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center, // Start from center
          radius: 1.0,
          colors: [
            Color.fromARGB(255, 50, 205, 50), // Green
            Color.fromARGB(255, 27, 27, 27), // Black
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(65),
        child: Transform.rotate(
          angle: pi / 4, // Rotate the container to make it a diamond
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(
                  20), // Apply border radius to the purple diamond
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7), // Shadow color
                  spreadRadius: 3, // How far the shadow spreads
                  blurRadius: 55, // Blur effect
                  offset: const Offset(5, 5), // Shadow offset
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: _buildShinyCircle(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
