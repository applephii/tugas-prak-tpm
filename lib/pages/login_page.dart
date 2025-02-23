import 'package:flutter/material.dart';
import 'package:tugas_prak_tpm/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const IconData account_circle_rounded = IconData(0xf522, fontFamily: 'MaterialIcons');
  static const IconData password_rounded = IconData(0xf0050, fontFamily: 'MaterialIcons');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              // controller: ,
              decoration: InputDecoration(
                prefixIcon: Icon(account_circle_rounded),
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 19),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              // controller: ,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(password_rounded),
                labelText: 'Password',
                border: OutlineInputBorder(),
                
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: TextButton(
                onPressed: () {
                  // forgot password logic
                },
                child: Text('Forgot Password?'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // login logic
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Divider(
                thickness: 2, // Thickness of the line
                color: Colors.grey, // Color of the line
                indent: 10, // Space from the left
                endIndent: 10, // Space from the right
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Center(
                child: Text(
                  "Don't have an account?",
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // register logic
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.lightGreen,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
