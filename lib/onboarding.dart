import 'package:doctor_test/home.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "DOCTOR APPOINTMENT",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2.0),
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xff90e0ef),
              backgroundImage: AssetImage("images/doctor.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pheyzal Mohamed Daahir",
              style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                textAlign: TextAlign.center,
                "Neque porro quisquam est qui dolorem "
                "There is no one who loves pain itself, who seeks "
                "There is no one who loves pain itself, who seeks...",
                style: TextStyle(color: Colors.blue.shade200),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  foregroundColor: Colors.blue),
              child: Text(
                "Create account",
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
