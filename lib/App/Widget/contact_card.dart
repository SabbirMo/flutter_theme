import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard(
      {super.key,
      required this.name,
      required this.address,
      required this.email,
      required this.city,
      required this.country});

  final String name;
  final String address;
  final String email;
  final String city;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color.fromARGB(169, 33, 114, 243),
              radius: 28,
            ),
            const SizedBox(width: 28),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name: $name", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text("Address: $address", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text("Email: $email", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,),
                  Text("City: $city", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text("Country: $country", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
