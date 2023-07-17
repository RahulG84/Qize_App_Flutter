import 'package:flutter/material.dart';
import 'package:quize_app/utils/hex_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  void Function()? onTap;
  String buttonName;

  AnswerButton({Key? key, this.onTap, required this.buttonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.00),
      child: Container(
        alignment: null,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.00, horizontal: 20.00),
              backgroundColor: Color(hexaColor('#121c36')),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.00)),
              minimumSize: const Size(350.00, 40.00),
              shadowColor: Color(hexaColor('#d62709')),
              textStyle: GoogleFonts.nunitoSans(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
          child: Text(
            buttonName,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
