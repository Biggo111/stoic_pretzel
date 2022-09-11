import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController idController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();
  TextEditingController fullnameController = new TextEditingController();
  List<String> _items = [
    "Student",
    "Teacher",
    "Staff"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/bus.png"),
              opacity: 200,
            ),
          ),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(40,50,30,0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'Full Name',
                      hintText: 'Enter Full Name',
                    ),
                    controller: fullnameController,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40,10,30,0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'User Name',
                      hintText: 'Enter Username',
                    ),
                    controller: usernameController,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40,10,30,0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'Email',
                      hintText: 'Enter email',
                    ),
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40,10,30,0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'Password',
                      hintText: 'Enter a password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40,10,30,0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'Your ID',
                      hintText: 'Enter your ID',
                    ),
                    controller: idController,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40,10,30,0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'Mobile Number',
                      hintText: 'Enter your mobile number',
                    ),
                    controller: mobileController,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 150,
                      ),
                      child: Text(
                        "Select your role",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
                      child: DropdownButton(
                       items: _items.map((e){
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                       }).toList(), 
                       onChanged: (value) {  }, 
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 55,
                  width: 210,
                  child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 39, 46, 36)),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                              ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}