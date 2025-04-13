import 'package:flutter/material.dart';
import 'package:yumbook_flutter/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yumbook_flutter/widgets/shared/input.dart';

// widgets
import 'package:yumbook_flutter/widgets/shared/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  // header
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hi! Welcome back, you've been missed",
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 40),

                  // form
                  Form(
                    key: _formKey,
                    child: Column(
                      spacing: 25,
                      children: [
                        Input(
                          label: 'Email',
                          hintText: 'example@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        Input(
                          label: 'Password',
                          hintText: '************',
                          keyboardType: TextInputType.text,
                          isPassword: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),

                        // forgot password button link
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                                // decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),

                        // sign in button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: Text('Sign In'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // divider text
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.grey[300], thickness: 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Or sign in with',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: Colors.grey[300], thickness: 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // social icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIconButton(
                        icon: FontAwesomeIcons.apple,
                        iconColor: Colors.black,
                      ),
                      const SizedBox(width: 20),
                      SocialIconButton(
                        icon: FontAwesomeIcons.google,
                        iconColor: Colors.red,
                      ),
                      const SizedBox(width: 20),
                      SocialIconButton(
                        icon: FontAwesomeIcons.facebookF,
                        iconColor: Colors.blue,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  // sign up text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
