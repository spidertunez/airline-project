import 'package:flutter/material.dart';



class PriceCard extends StatefulWidget {
  final String title;
  final String price;

  const PriceCard({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  _PriceCardState createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              widget.price,
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _isSelected ? Color(0xff7C6ECEFF) : null, // Change color when selected
              ),
              child: Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
