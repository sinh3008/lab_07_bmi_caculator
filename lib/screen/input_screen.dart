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

enum Gender{
  male,
  female
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateCardColor(Gender selectedGender) {
    // 1 = male, 2 = female
    // male clicked
    if (selectedGender == Gender.male) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    } else if (selectedGender == Gender.female) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(Gender.male);
                      });
                    },
                    child: ReusebleCard(
                      cardChild: IconContent(
                          iconData: FontAwesomeIcons.mars, label: 'MALE'),
                      colour: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(Gender.female);
                      });
                    },
                    child: ReusebleCard(
                      cardChild: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      colour: femaleCardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                // color: Color(0XFF1D1E33),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleCard(
                    cardChild: IconContent(
                        iconData: FontAwesomeIcons.mars, label: 'MALE'),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusebleCard(
                    cardChild: IconContent(
                        iconData: FontAwesomeIcons.mars, label: 'MALE'),
                    colour: activeCardColor,
                  ),
                ),
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
