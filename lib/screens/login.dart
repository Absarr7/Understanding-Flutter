import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/screens/home.dart';
import 'package:practice_app/utils/routes.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(milliseconds: 800));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formkey,
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'images/nohey.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  children: [
                    // email input
                    TextFormField(
                      decoration: const InputDecoration(hintText: "Name"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        } else if (value.length < 2) {
                          return "Please enter your real name";
                        }
                        return null;
                      },
                    ),

                    // Password Input
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Please enter your Email"),
                        EmailValidator(errorText: "Please enter a valid Email")
                      ]),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(hintText: "Password"),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Please enter a Password"),
                        MinLengthValidator(6,
                            errorText:
                                "Password should have more than 6 characters"),
                        MaxLengthValidator(15,
                            errorText:
                                "Password should have less than 15 characters"),
                        PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                            errorText: 'Please make a stronger Password')
                      ]),
                    ),

                    // Input fields end
                    const SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                      child: InkWell(
                        onTap: () => movetohome(context),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 800),
                          width: changebutton ? 50 : 190,
                          height: 50,
                          alignment: Alignment.center,
                          // text and icon
                          child: changebutton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
