import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:medi_sync/home_page.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('lib/Assets/avatar.png'),
              ),
            ),
            const Divider(
              color: Colors.white70,
              height: 60.0,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Bella C',
              style: TextStyle(
                color: Colors.lightBlue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'LOCATION',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Goa, India',
              style: TextStyle(
                color: Colors.lightBlue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'MOBILE NUMBER',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '9876543210',
              style: TextStyle(
                color: Colors.lightBlue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white70,
                ),
                SizedBox(width: 10.0),
                Text(
                  'bellac@gmail.com',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.facebook,
                  color: Colors.white70,
                ),
                SizedBox(width: 10.0),
                Text('Facebook',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.insert_chart,
                  color: Colors.white70,
                ),
                SizedBox(width: 10.0),
                Text('LinkedIn',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.0,
                    letterSpacing: 1.0,
                  ),
                ),

              ],

            ),
            SizedBox(height: 5.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.format_list_bulleted,
                  color: Colors.white70,
                ),
                SizedBox(width: 10),
                Text('GitHub',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.0,
                    letterSpacing: 1.0,
                  ),
                ),

              ],
            ),

          ],

        ),

      ),

    );

  }
}