import 'package:flutter/material.dart';
import 'package:oumente/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/login.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text(
                "OuMente",
                style: TextStyle(
                    fontFamily: 'Mitr', fontSize: 30, color: Colors.blue),
              ),
            ),
            elevation: 0.0,
            shadowColor: null,
          ),
          body: BodyPanel(),
        ),
      ],
    );
  }
}

class BodyPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "We are what we do",
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Mitr',
                        color: Color(0xffF8B154)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "We belive mind is something \n\n that need not be treated but guided",
                      textAlign: TextAlign.center,
                      style: (TextStyle(height: 0.8)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          color: Color(0xff8E97FD),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Container(
                              height: 60,
                              child: Center(
                                  child: Text(
                                "SIGN UP",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'ALREADY HAVE AN ACCOUNT ',
                      style: TextStyle(fontSize: null, color: Colors.grey[600]),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' LOG IN',
                            style: TextStyle(
                              color: Color(0xff8E97FD),
                            )),
                        // can add more TextSpans here...
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
