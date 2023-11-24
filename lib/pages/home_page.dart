import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onway_driver/pages/chat_page.dart';
import 'package:onway_driver/pages/notification.dart';
import 'package:onway_driver/pages/signin.dart';


class DriverHomePage extends StatelessWidget {
  const DriverHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 104, 104),
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
          InkWell(
            onTap: () {
             
            },
            child: const Icon(
              Icons.settings,
              color: Colors.black,
              size: 22,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            // Profile Section
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircleAvatar(
                  //   radius: 50,
                  //   backgroundImage: NetworkImage('URL_TO_PROFILE_IMAGE'),
                  // ),
                  const SizedBox(height: 16),
                  Text(
                    'Driver Name',
                    style: GoogleFonts.amita(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFFA9884),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            onPressed: () {
              // Handle log out button tap
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      'Log Out',
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    content: const Text(
                      'Do you want to Log Out?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(223, 255, 53, 53),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DriverSignIn(),
                            ),
                          );
                        },
                        child: Text(
                          'Log Out',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(223, 255, 53, 53),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(223, 255, 53, 53),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
            child: Text(
              'Log Out ',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


