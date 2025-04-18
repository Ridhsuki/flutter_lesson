import 'package:flutter/material.dart';
import 'package:flutter_explore/provider_learn/signup_and_welcome/provider/welcome_provider.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                bottom: -100,
                left: -100,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000),
                    ),
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              Positioned(
                top: -100,
                right: -100,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000),
                    ),
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 32),
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        label: Text('Username'),
                        hintText: 'input username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: 'input Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 36),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          backgroundColor: Colors.yellowAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () {
                          String username = usernameController.text;
                          String password = passwordController.text;
                          if (username.isNotEmpty && password.isNotEmpty) {
                            Provider.of<WelcomeProvider>(context, listen: false)
                                .newUser(username);
                            Navigator.pushNamed(context, '/greeting');
                          }
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
