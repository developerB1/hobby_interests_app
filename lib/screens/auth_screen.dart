import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = Provider.of<FirebaseAuth>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final email = _emailController.text;
                final password = _passwordController.text;

                if (_isLogin) {
                  // Login
                  try {
                    await auth.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                  } catch (e) {
                    print(e);
                  }
                } else {
                  // Registrierung
                  try {
                    await auth.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                  } catch (e) {
                    print(e);
                  }
                }
              },
              child: Text(_isLogin ? 'Login' : 'Register'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isLogin = !_isLogin;
                });
              },
              child: Text(_isLogin
                  ? 'Create new account'
                  : 'I already have an account'),
            ),
          ],
        ),
      ),
    );
  }
}
