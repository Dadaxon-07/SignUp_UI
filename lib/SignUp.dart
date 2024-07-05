import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Sing Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              Center(
                  child: Container(
                    child: Image.asset(
                      "assets/boys.png",
                      height: 380,
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    boxShadow: [

                    ],
                    color: Colors.deepPurple[100]),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.email_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    boxShadow: [

                    ],
                    color: Colors.deepPurple[100]),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.password)
                  ],
                ),
              ),
              SizedBox(
                height: 35,
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
                  width: 285,
                  child: Center(
                      child: Text(
                        "Sign Up",
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
              Container(
                margin: EdgeInsets.only(left: 110, top: 15),
                child: Row(
                  children: [
                    Text("Don't have a account ? "),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: (){},
                        child: Container(
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            )))
                  ],
                ),
              ),
              SizedBox(height: 17,),
              Text("-------------------------or-------------------------", style: TextStyle(fontWeight: FontWeight.bold, ),),
              SizedBox(height: 18,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.facebook),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Image.asset("assets/icon.png", fit: BoxFit.cover,)
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.facebook),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
