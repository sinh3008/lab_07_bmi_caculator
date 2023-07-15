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
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusebleCard()),
                Expanded(child: ReusebleCard()),
              ],
            ),
          ),
          Expanded(child: ReusebleCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusebleCard()),
                Expanded(child: ReusebleCard()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusebleCard extends StatelessWidget {
  const ReusebleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0XFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
