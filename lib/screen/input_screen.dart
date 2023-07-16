import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab_07_bmi_caculator/colors.dart';
import 'icon_content.dart';
import 're_use_card.dart';

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
                  cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars, label: 'MALE'),
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusebleCard(
                  cardChild: IconContent(
                    iconData: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  colour: activeCardColor,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusebleCard(
            cardChild:
                IconContent(iconData: FontAwesomeIcons.mars, label: 'MALE'),
            colour: activeCardColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusebleCard(
                  cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars, label: 'MALE'),
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusebleCard(
                  cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars, label: 'MALE'),
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

