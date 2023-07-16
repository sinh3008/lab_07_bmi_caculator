import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab_07_bmi_caculator/colors.dart';

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
                  cardChild: IconContent(),
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusebleCard(
                  cardChild: IconContent(),
                  colour: activeCardColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusebleCard(
            cardChild: IconContent(),
            colour: activeCardColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusebleCard(
                  cardChild: IconContent(),
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusebleCard(
                  cardChild: IconContent(),
                  colour: activeCardColor,
                )),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeigh,
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'MALE',
          style: TextStyle(fontSize: 18, color: Color(0XFF8D8E98)),
        )
      ],
    );
  }
}

class ReusebleCard extends StatelessWidget {
  ReusebleCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: cardChild,
      decoration: BoxDecoration(
        // color: Color(0XFF1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
