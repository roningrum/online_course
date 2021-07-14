import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChipWidget extends StatelessWidget {
  final String menu;
  final Color backgroundChip;
  final Color chipText;

  ChipWidget(this.menu, this.backgroundChip, this.chipText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Chip(
        label: Text(
          menu,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: chipText),
        ),
        backgroundColor: backgroundChip,
        elevation: 0,
      ),
    );
  }
}
