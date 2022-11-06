import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_sync/patient_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime date = DateTime(2024, 11, 06);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EDFF),
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
                          fontSize: 36, color: Colors.black),
                    )),
                    GestureDetector(
                      onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()));
                                },
                      child: Container(
                        height: 80,
                        child: Image.asset("lib/Assets/avatar.png"),
                      ),
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
                          color: Colors.black,
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
                          fontSize: 14, color: Colors.black),
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
                              Text("${date.day}/${date.month}/${date.year}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                              Text("Determination Date",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.black)),
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
                                  fontSize: 18, color: Colors.black)),
                          Text("3 Total",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.black)),
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
                        ElevatedButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            if (newDate == null) return;
                            setState(() => date = newDate);
                          },
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                Container(
                  child: ExpansionTile(
                    subtitle: Text("100mg"),
                    title: Text("Alendronate",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )),
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        tileColor: Colors.white,
                        title: Text(
                          "Take the medicine twice a day, before having food.",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ExpansionTile(
                    subtitle: Text("500mg"),
                    title: Text("Ibronate",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )),
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        tileColor: Colors.white,
                        title: Text(
                          "Take the medicine twice a day, before having food.",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ExpansionTile(
                    subtitle: Text("400mg"),
                    title: Text("Sebronate",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )),
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        tileColor: Colors.white,
                        title: Text(
                          "Take the medicine twice a day, before having food.",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
