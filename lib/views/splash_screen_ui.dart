import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {

  @override
  void initState() {
    // ให้หน่วงเวลา 3 วินาทีแล้วเปิดไปหน้า HomeUi แบบย้อนกลับไม่ได้
    Future.delayed(
      //เวลาที่หน่วง
      Duration(seconds: 3),
      //เมื่อครบเวลาแล้วจะให้ทำอะไร????? ณ ที่นี้จะเปิดหน้า HomeUi แบบย้อนกลับไม่ได้
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
        );
      },
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDB3500),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/calculator.png',
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.width * 0.50,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
