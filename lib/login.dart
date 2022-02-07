import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphism/components/constants.dart';
import 'package:lottie/lottie.dart';
import 'package:neumorphism/components/custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.0,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Bookify',
          style: GoogleFonts.comfortaa(
              color: themeColor, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          height: 550,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.asset('assets/lottie/circles_lottie.json',
                        height: 80.0, width: 80.0, repeat: false),
                    Text(
                      'Welcome',
                      style: GoogleFonts.comfortaa(
                        color: Colors.blueGrey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75.0,
                width: 250.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomButton(
                      height: 65.0,
                      width: 65.0,
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: themeColor,
                        size: 30.0,
                      ),
                      shape: BoxShape.circle,
                    ),
                    CustomButton(
                      height: 65.0,
                      width: 65.0,
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: themeColor,
                        size: 30.0,
                      ),
                      shape: BoxShape.circle,
                    ),
                    CustomButton(
                      height: 65.0,
                      width: 65.0,
                      child: FaIcon(
                        FontAwesomeIcons.sms,
                        color: themeColor,
                        size: 30.0,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ],
                ),
              ),
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                onChanged: (value) {},
              ),
              CustomTextField(
                obscureText: true,
                controller: passwordController,
                hintText: 'Password',
                onChanged: (value) {},
              ),
              InkWell(
                onTap: () {},
                child: CustomButton(
                  boxShadow: buttonShadow,
                  borderRadius: BorderRadius.circular(15.0),
                  shape: BoxShape.rectangle,
                  width: 250.0,
                  backgroundColor: themeColor,
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white70),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
