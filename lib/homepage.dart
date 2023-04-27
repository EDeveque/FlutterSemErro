// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:desigerjobsui/util/recently_added_job_card.dart';
import 'package:desigerjobsui/util/search_tags.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/job_description_page.dart';
import 'util/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    // [ companyName, jobName, payRate, logoImagePath, darkMode ]
    ['Uber', 'UI / UX Designer', '45', 'lib/icons/uber.png', true],
    ['Google', 'Product Designer', '60', 'lib/icons/google.png', false],
    ['Apple', 'Software Designer', '55', 'lib/icons/apple.png', false],
  ];

  final List recentlyAddedJobs = [
    // [ companyName, jobName, payRate, logoImagePath ]
    ['Nike', 'UI / UX Designer', '45', 'lib/icons/nike.png'],
    ['Apple', 'Software Designer', '55', 'lib/icons/apple.png'],
    ['Google', 'Product Designer', '60', 'lib/icons/google.png'],
  ];

  void openJobCard() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return JobDescriptionPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        child: Container(
          color: Colors.grey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Center(
                      child: Container(
                        height: 60,
                        child: Image.asset(
                          'lib/icons/iphone.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Text(
                        'H O M E',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.chat, color: Colors.white),
                      title: Text(
                        'I N B O X',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: ListTile(
                      leading: Icon(Icons.settings, color: Colors.white),
                      title: Text(
                        'S E T T I N G S',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text(
                    'L O G O U T',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) => GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      height: 30,
                      child: Image.asset(
                        'lib/icons/menu_from_left.png',
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // designer jobs heading
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: GoogleFonts.roboto(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40),

          // search tags
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          child: Image.asset(
                            'lib/icons/search.png',
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search for a job..',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 48,
                      color: Colors.grey[800],
                      child: Image.asset(
                        'lib/icons/settings.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // for you
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 25),

          Container(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return JobCard(
                  companyName: jobsForYou[index][0],
                  jobName: jobsForYou[index][1],
                  payRate: jobsForYou[index][2],
                  logoImagePath: jobsForYou[index][3],
                  darkMode: jobsForYou[index][4],
                  function: openJobCard,
                );
              },
            ),
          ),

          const SizedBox(height: 40),

          // recently added
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: recentlyAddedJobs.length,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    companyName: recentlyAddedJobs[index][0],
                    jobName: recentlyAddedJobs[index][1],
                    payRate: recentlyAddedJobs[index][2],
                    logoImagePath: recentlyAddedJobs[index][3],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
