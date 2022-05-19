import 'package:flutter/material.dart';

class ContactDetail extends StatelessWidget {
  const ContactDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 250,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade400,
                    ),
                    child: const Icon(
                      Icons.place,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Regent street,London",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade400,
                    ),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "+44 7474876098",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade400,
                    ),
                    child: const Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "thomas.hart@gmail.com",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
