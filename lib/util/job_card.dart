import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobName;
  final String payRate;
  final String logoImagePath;
  final bool darkMode;
  final function;

  JobCard({
    required this.companyName,
    required this.jobName,
    required this.payRate,
    required this.logoImagePath,
    required this.darkMode,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(20),
            width: 240,
            color: darkMode ? Colors.grey[900] : Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      child: Image.asset(logoImagePath),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        color: darkMode ? Colors.grey[800] : Colors.grey[300],
                        child: Text(
                          'Full Time',
                          style: GoogleFonts.roboto(
                            color: darkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobName,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: darkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\$' + payRate + '/h',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: darkMode ? Colors.grey[400] : Colors.grey[700],
                      ),
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
