import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final Icon? prefixIcon;
  final double? height;
  final double? width;
  final TextInputType? inputType;
  final double? padding;

  ItemTextField(
      {super.key,
      required this.controller,
      this.label,
      this.hint = '',
      this.prefixIcon,
      this.height = 40,
      this.width = 100,
      this.inputType = TextInputType.text,
      this.padding = 0});

  @override
  State<ItemTextField> createState() => _ItemTextFieldState();
}

class _ItemTextFieldState extends State<ItemTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          (widget.padding == null) ? null : EdgeInsets.all(widget.padding ?? 0),
      height: widget.height,
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        style: GoogleFonts.robotoFlex(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          label: Text(
            widget.label ?? '',
            style: GoogleFonts.robotoFlex(
              fontSize: 15,
            ),
          ),
          prefixIcon: (widget.prefixIcon == null) ? null : widget.prefixIcon,
          contentPadding: const EdgeInsets.only(top: 10, left: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
