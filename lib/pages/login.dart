import 'package:first_flutter_projects/utils/routes.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_unlock_24mb.png",
              height: 100,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 50.0,
            ),

            const Text(
              "Login Page",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold),
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
                    ConstrainedBox(
                      constraints: BoxConstraints.tight(const Size(200, 50)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                          border: OutlineInputBorder(),
                        ),
                        validator: (String value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                        onSaved: (String value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints.tight(const Size(200, 50)),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter PassWord",
                          labelText: "Password",
                        ),

                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(MyRouts.homeRoute);
                      },
                      child: const Text("Login"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.teal,
                          minimumSize: const Size(100, 50)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
