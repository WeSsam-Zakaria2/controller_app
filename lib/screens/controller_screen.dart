import 'package:flutter/material.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  Widget buildSquareButton(IconData icon) {
    return GestureDetector(
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF172946),
          borderRadius: BorderRadius.circular(8),
        ),

        child: Center(
          child: Icon(
            icon,
            size: 25,
            fontWeight: FontWeight.normal,

            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'CAR CONTROLLER',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF172946),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildSquareButton(
                          Icons.keyboard_double_arrow_left_outlined,
                        ),
                        buildSquareButton(
                          Icons.keyboard_double_arrow_right_outlined,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/rec_photo.png',
                      width: 350,
                      height: 200,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildSquareButton(
                          Icons.keyboard_double_arrow_up_outlined,
                        ),

                        buildSquareButton(
                          Icons.keyboard_double_arrow_down_outlined,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
