import 'package:flutter/material.dart';

class OrderConfirmationWidget extends StatelessWidget {
  const OrderConfirmationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 600;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.05,
        vertical: screenSize.height * 0.03,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/freelance.jpeg',
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.5,
              fit: BoxFit.contain,
            ),
            SizedBox(height: screenSize.height * 0.01),
            const Text(
              "Order Confirmed !",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Thank you so much for your payment.\nYour order is now confirmed!\nWe're getting your items ready and will send you an email with all the details shortly.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isSmallScreen ? 14 : 18,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            ElevatedButton(
              onPressed: () {
                // هنا ممكن تضيفي أي أكشن لما الزر يتضغط
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800], // لون الزر
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.1,
                  vertical: screenSize.height * 0.015,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Continue Shopping",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: OrderConfirmationWidget(),
    ),
  ));
}