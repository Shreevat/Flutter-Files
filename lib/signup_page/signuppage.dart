import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passwordObscure = true;
  static const kBorderInputDecoration = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
      borderRadius: BorderRadius.all(Radius.circular(10)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/logo.png'),
                SizedBox(
                  height: 18,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Log in to continue',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    enabledBorder: kBorderInputDecoration,
                    focusedBorder: kBorderInputDecoration,
                    prefixIcon: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    enabledBorder: kBorderInputDecoration,
                    focusedBorder: kBorderInputDecoration,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: passwordObscure,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: kBorderInputDecoration,
                      focusedBorder: kBorderInputDecoration,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          passwordObscure
                              ? passwordObscure = false
                              : passwordObscure = true;
                          setState(() {});
                        },
                        icon: passwordObscure
                            ? const Icon(
                                Icons.remove_red_eye,
                                color: Colors.green,
                              )
                            : const Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.green,
                              ),
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: passwordObscure,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      enabledBorder: kBorderInputDecoration,
                      focusedBorder: kBorderInputDecoration,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          passwordObscure
                              ? passwordObscure = false
                              : passwordObscure = true;
                          setState(() {});
                        },
                        icon: passwordObscure
                            ? const Icon(
                                Icons.remove_red_eye,
                                color: Colors.green,
                              )
                            : const Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.green,
                              ),
                      )),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {},
                    child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Signup',
                          textAlign: TextAlign.center,
                        ))),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Already have an account?  ",
                              style: TextStyle(color: Colors.black)),
                          // TextSpan(
                          //     text: "Login",
                          //     style: TextStyle(color: Colors.green))
                        ])),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()),
                          );
                        },
                        child: Container(
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 38,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
