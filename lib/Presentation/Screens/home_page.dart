import 'package:flutter/material.dart';
import 'package:neopop/neopop.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/bg_image.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child:
              Align(alignment: Alignment.bottomCenter, child: buildNeopopBtn()),
        ),
      ),
    );
  }

  Widget buildNeopopBtn() => NeoPopTiltedButton(
        isFloating: true,
        onTapUp: () => debugPrint('Play now'),
        decoration: const NeoPopTiltedButtonDecoration(
          color: Color(0xFFffe22d),
          plunkColor: Color(0xFFc3a13b),
          shadowColor: Colors.black,
        ),
        child: const NeoPopShimmer(
           shimmerColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15),
            child: Text('Play Now →',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      );
}
