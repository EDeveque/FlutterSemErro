import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDescriptionPage extends StatelessWidget {
  const JobDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Google ',
          style: GoogleFonts.roboto(
            color: Colors.grey[800],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50),
            Container(
              height: 50,
              child: Image.asset('lib/icons/google.png'),
            ),
            SizedBox(height: 40),
            Text(
              'Designer brabo',
              style: GoogleFonts.roboto(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Corbelia , PR',
              style: GoogleFonts.roboto(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        "Bora bora",
                        style: GoogleFonts.roboto(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    color: Colors.green[400],
                    padding: EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        "\$60 reais a hora",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abilidades",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "• Comunicacao",
                    style: GoogleFonts.roboto(
                      color: Colors.grey[500],
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "• Aprenda de tudo",
                    style: GoogleFonts.roboto(
                      color: Colors.grey[500],
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "• Bora trabalhar aqui",
                    style: GoogleFonts.roboto(
                      color: Colors.grey[500],
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 25),
                  Container(
                    height: 30,
                    child: Image.asset(
                      'lib/icons/heart.png',
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(width: 25),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        color: Colors.red[400],
                        child: Center(
                          child: Text(
                            'Apply Now',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
