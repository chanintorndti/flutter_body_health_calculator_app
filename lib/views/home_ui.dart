import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/views/about_ui.dart';
import 'package:flutter_body_health_calculator_app/views/bmi_ui.dart';
import 'package:flutter_body_health_calculator_app/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //สร้างตัวแปรควบคุม currentIndex ของ BarItem
  int currentIndexStatus = 1;

  //สร้างตัวแปรเก็บ Widget หน้าจอที่จะมาแสดงที่ body ของ Scaffold
  List<Widget> showBody = [
    BmiUi(),
    AboutUi(),
    BmrUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB3500),
        title: Text(
          'Body Health Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            currentIndexStatus = value;
          });
        },
        currentIndex: currentIndexStatus,
        selectedItemColor: Color(0xFFDB3500),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3,
            ),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.personBooth,
            ),
            label: 'BMR',
          ),          
        ],
      ),
      body: showBody[currentIndexStatus],
    );
  }
}
