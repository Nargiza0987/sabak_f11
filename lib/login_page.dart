import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabak_f11/home_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String? _email;
  String? _phone;
  bool isActive = false;
  void _active() {
    if (_phone != null && _email != null) {}
    if (_phone!.length < 1 || _email!.length < 1) {
      isActive = false;
    } else {
      isActive = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff076650),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Тапшырма-04',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 34,
                backgroundImage: AssetImage('w.png'),
              ),
              SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints(maxHeight: 90, maxWidth: 80),
                  child: Image.asset(
                    '/image/a.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Image.asset(
                '/image/remove.png',
                width: 80,
                height: 80,
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Nargiza Kulmamyrova',
            style: GoogleFonts.pacifico(color: Colors.white, fontSize: 30),
          ),
          Text(
            'Flutter DEVELOPER',
            style: GoogleFonts.cabin(
                color: Color.fromARGB(255, 168, 209, 164), fontSize: 20),
          ),
          Divider(
            color: Color.fromARGB(255, 168, 209, 164),
            height: 15,
            indent: 130,
            endIndent: 130,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                //initialValue: '+79653111987',
                style: TextStyle(
                  color: Color(0xff076650),
                  fontSize: 20,
                ),
                onChanged: (String? phone) {
                  _phone = phone;
                  _active();
                },
                decoration: InputDecoration(
                  filled: true,
                  hintText: '+7 ### ## ## ##',
                  fillColor: Colors.white,
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xff076650),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                //initialValue: 'kulm1987@gmail.com',
                style: TextStyle(color: Color(0xff076650), fontSize: 20),
                onChanged: (String? email) {
                  _email = email;
                  _active();
                },
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'example@gmail.com',
                  fillColor: Colors.white,
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff076650),
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              side: BorderSide(
                  width: 1.5, color: Colors.white, style: BorderStyle.solid),
            ),
            onPressed: isActive
                ? () {
                    if (_phone.toString() == '+79653111987' &&
                        _email.toString() == 'kulm1987@gmail.com') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            'Ошибка номера или электронный почты',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      );
                    }
                  }
                : null,
            child: Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
