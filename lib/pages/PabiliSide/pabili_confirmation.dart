import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onway_driver/pages/PabiliSide/start_booking.dart';

class PabiliConfirmation extends StatelessWidget {
  const PabiliConfirmation({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
              'Pabili',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "User's Name",
                style: GoogleFonts.notoSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Time
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "User Location",
                style: GoogleFonts.notoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Store Location",
                style: GoogleFonts.notoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            // Additional details can be added here
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Pabili Items:",
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // The user's pabili must display here
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Quanity and Item",
                  style: GoogleFonts.notoSans(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Instruction: ",
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Estimated Price: ",
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Delivery Fee: ",
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Kilometers: ",
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Show a confirmation dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Decline Confirmation"),
                          content: Text("Are you sure you want to decline?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: Text("No"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the confirmation dialog
                                // Show another dialog indicating book decline
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Book Declined"),
                                      content: Text("The book has been declined."),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(); // Close the book decline dialog
                                          },
                                          child: Text("OK"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text("Yes"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(223, 255, 53, 53),
                    onPrimary: const Color(0xFFEDEDED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 15),
                  ),
                  child: Text(
                    'Decline',
                    style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFEDEDED),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartDelivery(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFEDEDED),
                    onPrimary: const Color.fromARGB(223, 255, 53, 53),
                    side: const BorderSide(
                      color: Color.fromARGB(223, 255, 53, 53),
                      width: 2.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                  child: Text(
                    'Accept',
                    style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(223, 255, 53, 53),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
