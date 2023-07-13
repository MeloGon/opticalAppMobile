import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final Icon? icon;
  const HeaderWidget({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(9)),
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const Icon(Icons.disabled_by_default_rounded),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: GoogleFonts.robotoFlex(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Colors.black),
          )
        ],
      ),
    );
  }
}
