import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_d/firebase/login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController authController = Get.put(AuthController());

  void login() {
    if (authController.isLoading.value) return;

    if (!(authController.formKey.currentState?.validate() ?? false)) {
      return;
    }

    authController.login(
      authController.email.text,
      authController.password.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Form(
              key: authController.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 70,
                  ),

                  SizedBox(height: 20),

                  Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Login to your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),

                  SizedBox(height: 40),

                  TextFormField(
                    controller: authController.email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }

                      if (!GetUtils.isEmail(value.trim())) {
                        return 'Please enter a valid email';
                      }

                      return null;
                    },
                  ),

                  SizedBox(height: 16),

                   TextFormField(
                      controller: authController.password,
                      obscureText:
                      authController.obscurePassword,
                      autofillHints: const [AutofillHints.password],
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon:
                        const Icon(Icons.lock_outline),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            authController.obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              authController.obscurePassword = !authController.obscurePassword;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }

                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }

                        return null;
                      },
                    ),

                  SizedBox(height: 24),

                  Obx(
                   () => SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: authController.isLoading.value
                            ? null
                            : login,
                        child: authController.isLoading.value
                            ? Center(child: CircularProgressIndicator())
                            : const Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),

                  SizedBox(height: 20),

                  Obx(
                   () => SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: authController.isLoading.value
                            ? null
                            : authController.signInWithGoogle,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black87,
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhtVJyyfMJCQN7M7-KE11wX1HjNEecL6ducDAlLKMkhQ&s=10',
                              height: 22,
                              width: 22,
                            ),

                            SizedBox(width: 12),

                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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