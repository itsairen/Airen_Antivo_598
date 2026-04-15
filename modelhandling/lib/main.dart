import 'package:flutter/material.dart';
import 'package:modelhandling/screen/student_screen%20(2).dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://dgqxceqxtagyctqhqkhq.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRncXhjZXF4dGFneWN0cWhxa2hxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NjY0MzUsImV4cCI6MjA4ODE0MjQzNX0.hcYVA53udbNvNd9VeQt44n7C3vi38HtgOOXS0Uv31lE",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: StudentPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
