import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  String textName;
  CustomText({Key? key, required this.textName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.00),
      child: Text(textName,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 25,
            color: Colors.white,
            // fontWeight: FontWeight.bold,
          )),
    );
  }
}
