import 'package:flutter/material.dart';

class PricingDetails extends StatelessWidget {
  const PricingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Text(
            'Price:',
            style: TextStyle(fontSize: 36.0),
          ),
          Text(
            '\$44',
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
