import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTags extends StatelessWidget {
  final String child;

  SearchTags({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Text(
                child,
                style: GoogleFonts.roboto(),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.cancel,
                color: Colors.grey[800],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
