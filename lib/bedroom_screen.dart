import 'package:flutter/material.dart';

class BedroomScreen extends StatelessWidget {
  const BedroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🛏️ Спальня'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Вы в спальне. Здесь можно отдохнуть.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('↩️ Вернуться в прихожую'),
            ),
          ],
        ),
      ),
    );
  }
}