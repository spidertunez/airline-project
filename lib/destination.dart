import 'package:flutter/material.dart';
import 'package:travelbug/price%20card.dart';

import 'booking.dart';


class DestinationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7C6ECE),
      appBar: AppBar(
        title: Text('Destination Details',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              "https://babylontours.com/wp-content/uploads/2016/09/london-441853_960_720.jpg",
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20),
            Text(
              'LONDON',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Location: London , England ',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'London is the capital city of England and the United Kingdom. It is one of the most populous cities in Europe and is known for its rich history, diverse culture, and iconic landmarks',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Prices:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 16, // Adjust spacing as needed
              runSpacing: 8, // Adjust run spacing as needed
              children: [
                PriceCard(
                  title: 'Economy',
                  price: '\$200',
                ),
                PriceCard(
                  title: 'Business',
                  price: '\$500',
                ),
                PriceCard(
                  title: 'First Class',
                  price: '\$1000',
                ),
                PriceCard(
                  title: 'VIP',
                  price: '\$2000',
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to BookingDetailsPage when "Book Now" button is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingDetailsPage(
                        // Example price
                        ),
                  ),
                );
              },
              child: Text('Book Now'),
            )
          ],
        ),
      ),
    );
  }
}
