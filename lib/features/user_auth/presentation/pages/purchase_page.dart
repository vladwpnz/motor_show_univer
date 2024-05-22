import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  final String carName;
  final String carDescription;
  final String carImage;
  final String carPrice;

  const PurchasePage({
    required this.carName,
    required this.carDescription,
    required this.carImage,
    required this.carPrice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purchase $carName"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white70],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  carImage,
                  height: 200,
                  width: 200,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20),
                Text(
                  carName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  carDescription,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  carPrice,
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                SizedBox(height: 20),
                Text(
                  "Thank you for your order, we will send you the details to your email shortly",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back to Home"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
