import 'package:flutter/material.dart';
import 'bedroom_screen.dart';
import 'kitchen_screen.dart';

class HallwayScreen extends StatelessWidget {
  const HallwayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🏠 Прихожая'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Вы находитесь в прихожей',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BedroomScreen(),
                  ),
                );
              },
              child: const Text('🛏️ Перейти в спальню'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KitchenScreen(),
                  ),
                );
              },
              child: const Text('🍳 Перейти на кухню'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('🚪 Выйти из квартиры'),
            ),
          ],
        ),
      ),
    );
  }
}