import 'package:flutter/material.dart';
import 'package:customerpulse_flutter/customerpulse_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showSurveyPage(context),
              child: const Text('Show Survey Page'),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () => _showSurveyBottomSheet(context),
              child: const Text('Show Survey Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSurveyPage(BuildContext context) {
    CustomerPulseFlutter().showSurveyPage(context, appId: 'com.kalvad.example', linkOrToken: 'F/AH/');
  }

  void _showSurveyBottomSheet(BuildContext context) {
    CustomerPulseFlutter().showSurveyBottomSheet(context, appId: 'com.kalvad.example', linkOrToken: 'F/AH/');
  }
}
