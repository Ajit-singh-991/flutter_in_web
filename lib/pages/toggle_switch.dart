// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State {
  //bool isSwitched = false;
  var textValue = 'OFF';

  // void toggleSwitch(bool value) {
  //   if (isSwitched == false) {
  //     setState(() {
  //       isSwitched = true;
  //       textValue = 'ON';
  //     });
  //   } else {
  //     setState(() {
  //       isSwitched = false;
  //       textValue = 'OFF';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(
          onPressed: () {
            setState(() {
              textValue = 'ON';
              Colors.orange;
            });
          },
          onLongPress: () {
            setState(() {
              textValue = 'OFF';
            });
          },
          child: Text("$textValue")),
      // Transform.scale(
      //     scale: 2,
      //     child: Switch(
      //       onChanged: toggleSwitch,
      //       value: isSwitched,
      //       activeColor: Colors.orange[600],
      //       activeTrackColor: Colors.yellow,
      //       inactiveThumbColor: Colors.redAccent,
      //       inactiveTrackColor: Colors.orange,
      //     )),
      Text(
        'Switch Button is $textValue',
        style: GoogleFonts.lato(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      )
    ]);
  }
}
