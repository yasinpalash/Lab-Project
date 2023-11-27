import 'package:alllabapps/quiz_app/mainquiz.dart';
import 'package:flutter/material.dart';

import 'Calculator_app/maincalclutor.dart';
import 'Portfolio_app/main_portfolio.dart';
import 'Weather_app/mainone.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab-Project'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreenPortfolio(),
                  ),
                );
              },
              child: const Text('Portfolio'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quiz(),
                  ),
                );
              },
              child: const Text('Quiz'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalculatorScreen(),
                  ),
                );
              },
              child: const Text('Calculator'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherScreen(),
                  ),
                );
              },
              child: const Text('Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
