import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mindgame extends StatefulWidget {
  const mindgame({super.key});

  @override
  State<mindgame> createState() => _mindgameState();
}

class _mindgameState extends State<mindgame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 200,
              child: TextField(
                textAlign: TextAlign.left,
                // controller: controller,
                cursorColor: Colors.black,
                cursorHeight: 2,
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,

                  // contentPadding: EdgeInsets.symmetric(
                  //   vertical: 43.h,
                  // ), // Adjust the vertical padding
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(7),
                ],
                textInputAction: TextInputAction.next,
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
