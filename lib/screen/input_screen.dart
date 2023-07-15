import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Caculator'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Body text',
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.dark().copyWith(
            secondary: Colors.purpleAccent,
            onSecondary: Colors.white,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
