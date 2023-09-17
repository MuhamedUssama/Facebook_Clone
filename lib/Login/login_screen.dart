import 'package:facbook_home_screen_design/Login/text_field_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[800],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 4),
            const Icon(
              Icons.facebook,
              color: Colors.white,
              size: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFieldStyle(hintText: "Email or Phone"),
            const SizedBox(
              height: 10,
            ),
            TextFieldStyle(hintText: "Password"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "home");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              child: const Text("LOG IN", style: TextStyle(fontSize: 18,)),
            ),
            const Spacer(flex: 4),
            Text("Sign Up For Facebook", style: TextStyle(color: Colors.grey[300], fontSize: 15),textAlign: TextAlign.center,),
            const SizedBox(height: 15,),
            Text("Forget Password?", style: TextStyle(color: Colors.grey[300], fontSize: 15,),textAlign: TextAlign.center,),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
