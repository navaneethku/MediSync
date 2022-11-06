import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0068FF),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: Text(
                      "MediSync",
                      style: GoogleFonts.poppins(
                          fontSize: 36, color: Colors.white),
                    )),
                    Container(
                      height: 80,
                      child: Image.asset("lib/Assets/avatar.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Osteoporosis",
                      style: GoogleFonts.poppins(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Ongoing treatment",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.calendar_month),
                            radius: 30,
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text("06 Nov, 2022",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                              Text("Determination Date",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text("Medicines",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: Colors.white)),
                          Text("3 Total",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(
                      child: Row(children: [
                        CircleAvatar(
                            radius: 25,
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                            SizedBox(width: 20),
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        )
                      ]),
                    ),
                  ],
                ),
                Container(
                  child: ExpansionTile(
                    title: Text("Alendronate",style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(title: Text("Take the medicine twice a day, before having food.", style: GoogleFonts.poppins(fontSize:12),),)
                  ],
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
