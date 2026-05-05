import 'package:flutter/material.dart';
import 'screens/job_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vaga de Estágio - Actemium',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF003D7C), // Actemium Blue
          primary: const Color(0xFF003D7C),
          secondary: const Color(0xFF00B0F0), // Light blue accent
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const JobDetailsScreen(),
      },
    );
  }
}
