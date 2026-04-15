import 'package:flutter/material.dart';
import 'package:modelhandling/Screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://tlbwlbvwjizhxmogwqef.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRsYndsYnZ3aml6aHhtb2d3cWVmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1Njk2OTAsImV4cCI6MjA4ODE0NTY5MH0.Mnx7cysLRGsbWo_Kaw2KCzpmiTgI8dFogaOx3jBO-Ys",
  );

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),

      home: StudentPage(),
    );
  }
}
