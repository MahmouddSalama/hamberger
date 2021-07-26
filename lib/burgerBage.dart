import 'package:flutter/material.dart';
class Bageburger extends StatefulWidget {
  static const String tag='BurgerBage';
  @override
  _BageburgerState createState() => _BageburgerState();
}

class _BageburgerState extends State<Bageburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('NEXT -->',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
