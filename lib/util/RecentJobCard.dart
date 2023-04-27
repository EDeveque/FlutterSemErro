import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobName;
  final String payRate;
  final String logoImagePath;

  RecentJobCard({
    required this.companyName,
    required this.jobName,
    required this.payRate,
    required this.logoImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(12),
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 50,
                      color: Colors.grey[200],
                      padding: EdgeInsets.all(12),
                      child: Image.asset(logoImagePath),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(jobName,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        companyName,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.green[300],
                  child: Text(
                    '\$' + payRate + ' / h',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
