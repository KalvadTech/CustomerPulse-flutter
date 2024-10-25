import 'package:flutter/material.dart';
import 'customer_pulse_web_view.dart';

class CustomerPulsePage extends StatelessWidget {
  final String url;

  const CustomerPulsePage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: CustomerPulseWebView(url: url),
    );
  }
}
