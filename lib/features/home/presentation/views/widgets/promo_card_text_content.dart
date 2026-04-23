import 'package:flutter/material.dart';

class PromoCardTextContent extends StatelessWidget {
  const PromoCardTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 204,
      height: 90,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 62, // was 54
            child: Container(
              width: 149,
              height: 23,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.00, -0.00),
                  end: Alignment(-0.00, 1.00),
                  colors: [Color(0xFF111111), Color(0xFF303030)],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 24, // was 15
            child: Container(
              width: 200,
              height: 27,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.00, -0.00),
                  end: Alignment(-0.00, 1.00),
                  colors: [Color(0xFF111111), Color(0xFF303030)],
                ),
              ),
            ),
          ),
          const Positioned(
            left: 1,
            top: 0,
            child: SizedBox(
              width: 203,
              child: Text(
                'Buy one get one FREE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
