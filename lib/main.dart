import 'package:flutter/material.dart';

void main() {
  runApp(BMICaculator());
}

class BMICaculator extends StatelessWidget {
  const BMICaculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


