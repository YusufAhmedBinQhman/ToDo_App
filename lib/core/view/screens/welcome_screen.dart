import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/core/view/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          spacing: 5,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.jpg", width: 40),
                Text("Tasky"),
              ],
            ),
            Spacer(flex: 2),
            Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome To Tasky"),
                Image.asset("assets/images/hand_welcome.png", width: 30),
              ],
            ),
            Text(
              "Your productivity journey starts here.",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/pana.png"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text("Full Name"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                onChanged: (value) async {
                  final SharedPreferences prefUser =
                      await SharedPreferences.getInstance();
                  prefUser.setString("User_Name", value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "e.g. Sarah Khalid",
                  filled: true,
                  fillColor: Color.fromRGBO(40, 40, 40, 1),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  "Let’s Get Started",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff15B86C),
                ),
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
