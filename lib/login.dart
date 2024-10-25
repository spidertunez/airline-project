import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6C38D4),
      appBar: AppBar(
        backgroundColor: Color(0xff6C38D4),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 35,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Untitled_design-2-removebg-preview.png",
                width: 850,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.email, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Simulate successful login
                  // Replace '/explore' with the route of your ExplorePage
                  Navigator.pushReplacementNamed(context, '/explore');
                },
                child: Text('LOG IN'),
              ),
            ],
          )
      ),
    );
  }
}