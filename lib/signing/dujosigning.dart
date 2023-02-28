import 'package:dujofinal/signing/dujosignup.dart';
import 'package:flutter/material.dart';

const List<Widget> schools = <Widget>[
  Text('Student'),
  Text('Parent'),
  Text('Teacher')
];

class DujoLogin extends StatefulWidget {
  const DujoLogin({super.key});

  @override
  State<DujoLogin> createState() => _DujoLoginState();
}

class _DujoLoginState extends State<DujoLogin> {
  final List<bool> _selectedSchools = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.width * 1 / 3.5, left: 30),
                  child: Container(
                    height: screenSize.width * 1 / 7,
                    width: screenSize.width * 1 / 2,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 252, 10, 232)),
                    ),
                  ),
                ),
                 SizedBox(
                  height: screenSize.width * 1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.width * 1 / 4.5, left: 30),
                  child: Container(
                    height: screenSize.width * 1 / 7,
                    width: screenSize.width * 1 / 2,
                    child: Text(
                      "Welcome Back,",
                      style: TextStyle(
                          fontSize: 25, color: Color.fromARGB(255, 90, 1, 131)),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.width * 1,
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(top: screenSize.width * 1 / 12),
                            width: screenSize.width / 3,
                            child: Divider(
                              color: Colors.red,
                              thickness: 3,
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(top: screenSize.width * 1 / 12),
                          child: Container(
                            height: screenSize.width * 1 / 7,
                            width: screenSize.width * 1 / 3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://storage.googleapis.com/scipro-bucket/lepton%20dujo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin:
                                EdgeInsets.only(top: screenSize.width * 1 / 12),
                            width: screenSize.width / 3,
                            child: Divider(
                              color: Colors.red,
                              thickness: 3,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: screenSize.width * 0.89),
                child: Container(
                  height: screenSize.width * 1.145,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                        topRight: Radius.circular(29)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 93, 8, 190),
                        Color.fromARGB(255, 187, 33, 214),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 230),
                        child: Text(
                          "Sign in As:",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 162, 166),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ToggleButtons(
                          onPressed: (int index) {
                            setState(() {
                              for (int i = 0;
                                  i < _selectedSchools.length;
                                  i++) {
                                _selectedSchools[i] = i == index;
                              }
                            });
                          },
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1)),
                          selectedBorderColor: Colors.red[700],
                          selectedColor: Colors.black,
                          fillColor: Colors.white,
                          color: Colors.black,
                          constraints: const BoxConstraints(
                            minHeight: 40.0,
                            minWidth: 100.0,
                          ),
                          isSelected: _selectedSchools,
                          children: schools,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(screenSize.width * 1 / 13),
                        child: Container(
                          height: screenSize.width * 0.13,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Enter Email ID',
                                  prefixIcon: Icon(Icons.mail_lock_sharp),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
                                  )),
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.width * 1 / 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            // top: screenSize.width * 1 / 36,
                            left: screenSize.width * 1 / 12,
                            right: screenSize.width * 1 / 13),
                        child: Container(
                          height: screenSize.width * 0.13,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(19)),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(fontSize: 19),
                              hintText: 'Password',
                            ),
                            style: TextStyle(fontSize: 19),
                            obscureText: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.width * 1 / 23,
                      ),
                      InkWell(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: screenSize.width * 1 / 1.9),
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => ForgotPassword(),
                          //     ));
                        },
                      ),
                      SizedBox(height: screenSize.width * 1 / 36),
                      Container(
                        height: screenSize.width * 1 / 7,
                        width: screenSize.width * 1 / 1.2,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(14)),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            padding: const EdgeInsets.all(9.0),
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DujoSignup(),
                                ));
                          },
                          child: const Text('SIGN IN'),
                        ),
                      ),
                      SizedBox(height: screenSize.width * 1 / 100),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenSize.width * 1 / 4.3,
                            top: screenSize.width * 1 / 29),
                        child: Row(children: [
                          Text(
                            "Don't have an account ? ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                            child: Container(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 19, color: Colors.yellowAccent),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DujoSignup()),
                              );
                            },
                          ),
                        ]),
                      ),
                    ]),
                  ),
                )),
          ],
        ),
      ]),
    ));
  }
}
