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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusebleCard(
                  colour: Color(0XFF1D1E33),
                )),
                Expanded(
                    child: ReusebleCard(
                  colour: Color(0XFF1D1E33),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusebleCard(
            colour: Color(0XFFFFFFFF),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusebleCard(
                  colour: Color(0XFF1D1E33),
                )),
                Expanded(
                    child: ReusebleCard(
                  colour: Color(0XFF1D1E33),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusebleCard extends StatelessWidget {
  ReusebleCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        // color: Color(0XFF1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
