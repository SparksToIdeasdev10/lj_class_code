import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../class_a/bottom_nav_example.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final isLoading = false.obs;
  final hidePassword = true.obs;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty) {
      showMessage('Please enter your email');
      return;
    }

    if (password.isEmpty) {
      showMessage('Please enter your password');
      return;
    }

    isLoading.value = true;

    try {
      final UserCredential userCredential =
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        Get.off(
              () => BottomNavExample(),
        );
      }
    } on FirebaseAuthException catch (e) {
      String message = 'Login failed';

      switch (e.code) {
        case 'user-not-found':
          message = 'No user found with this email';
          break;

        case 'wrong-password':
        case 'invalid-credential':
          message = 'Incorrect email or password';
          break;

        case 'invalid-email':
          message = 'Invalid email address';
          break;

        case 'user-disabled':
          message = 'This account has been disabled';
          break;

        case 'too-many-requests':
          message = 'Too many attempts. Please try again later';
          break;

        case 'network-request-failed':
          message = 'Please check your internet connection';
          break;

        default:
          message = e.message ?? 'Login failed. Please try again';
      }

      showMessage(message);
    } catch (e) {
      showMessage('Something went wrong. Please try again');
    } finally {
      isLoading.value = false;
    }
  }

  void togglePasswordVisibility() {
    hidePassword.value = !hidePassword.value;
  }

  void showMessage(String message) {
    Get.snackbar(
      'Login',
      message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 3),
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();

    super.onClose();
  }
}
