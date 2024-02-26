import 'package:flutter/material.dart';
import 'package:testing/screens/LoginScreen.dart';
import 'package:testing/screens/RegisterScreen.dart';
import 'package:testing/widget/CustomButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:  25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                Image.asset(
                  "assets/asset3.gif",
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Jai Jawan! Jai Kisaan!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                //CustomButton
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>  RegisterScreen()
                      ),
                      );
                    },
                    text: "Login",
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>  LoginScreen()
                    ),
                    );
                  },
                  child: Text("If you are already registered click here."),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
