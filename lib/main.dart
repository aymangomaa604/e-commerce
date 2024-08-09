
import 'package:flutter/material.dart';
import 'package:store_appp/screens/home_page.dart';

void main() {
  runApp(const MyStore());
  
}
class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Homepage(),
    );
  }
}