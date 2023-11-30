import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onway_driver/pages/PadalaSide/padala_confirmation.dart';
import 'package:onway_driver/pages/chat_page.dart';
import 'package:onway_driver/pages/notification.dart';
// import 'package:onway_driver/pages/PabiliSide/pabili_confirmation.dart';
import 'package:onway_driver/pages/settings_page.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({Key? key}) : super(key: key);

  @override
  _DriverHomePageState createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  String driverName = "Name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 104, 104),
        automaticallyImplyLeading: false,
        title: Text(
          'Welcome ' +  driverName,
          style: GoogleFonts.montserrat(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DriverChatPage(),
                ),
              );
            },
            child: const Icon(
              FontAwesomeIcons.solidMessage,
              color: Colors.black,
              size: 20,
            ),
          ),
          const SizedBox(width: 35),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DriverNotificationPage(),
                ),
              );
            },
            child: const Icon(
              FontAwesomeIcons.solidBell,
              color: Colors.black,
              size: 22,
            ),
          ),
          const SizedBox(width: 35),
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
              child: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ],
        elevation: 0,

      ),
      backgroundColor: const Color(0xFFEDEDED),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        //sample lang
        child: PadalaConfirmation(),
      )
    );
  }
}