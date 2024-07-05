import 'package:flutter/material.dart';
import 'package:signup/LogIn.dart';
import 'package:signup/SignUp.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 34),
              child: Text(
                "WELCOME TO EDU",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  "assets/i.png",
                  height: 400,
                  width: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {  Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return Login();
                  }));},
              child: Container(
                height: 62,
                width: 310,
                child: Center(
                    child: Text(
                  "LogIn",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )),
                decoration: BoxDecoration(
                    color: Colors.purple[800],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple[900]!.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 29,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Signup();
                }));
              },
              child: Container(
                height: 62,
                width: 310,
                child: Center(
                    child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purpleAccent.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
