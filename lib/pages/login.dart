import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //"set text in center"
      // child: Center(
      //   child: Text("Login Page",style: TextStyle(
      //     fontSize: 20,
      //     color: Colors.amber,
      //     fontWeight: FontWeight.bold
      //   ),),
      // )

      //"set image on whole page"
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_unlock_24mb.png",
            height: 200,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 50.0,
          ),

          const Text(
            "Login Page",
            style: TextStyle(
                fontSize: 20, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          //
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Center(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "UserName",
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter PassWord",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  ElevatedButton(
                    onPressed: onPressed(),
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  onPressed() {
    print("Hi Login to Flutter");
  }
}
