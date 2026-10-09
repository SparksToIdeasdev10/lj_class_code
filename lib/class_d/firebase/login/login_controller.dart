import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  final RxBool isLoading = false.obs;
  bool obscurePassword = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login(String email, String password) async {
    try {
      isLoading.value = true;
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Get.snackbar(
        'Success',
        'Login successful',
        snackPosition: SnackPosition.BOTTOM,
      );
    } on FirebaseAuthException catch (e) {
      String message;

      switch (e.code) {
        case 'invalid-email':
          message = 'Please enter a valid email address.';
          break;
        case 'user-not-found':
          message = 'No account found with this email.';
          break;
        case 'wrong-password':
          message = 'Incorrect password.';
          break;
        case 'invalid-credential':
          message = 'Invalid email or password.';
          break;
        case 'user-disabled':
          message = 'This account has been disabled.';
          break;
        case 'too-many-requests':
          message = 'Too many attempts. Please try again later.';
          break;
        default:
          message = e.message ?? 'Login failed.';
      }

      Get.snackbar(
        'Login Failed',
        message,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Something went wrong. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      isLoading.value = true;

      final GoogleAuthProvider provider = GoogleAuthProvider();

      if (kIsWeb) {
        await auth.signInWithPopup(provider);
      } else {
        final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

        if (googleUser == null) return;

        final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await auth.signInWithCredential(credential);
      }
      Get.snackbar(
        'Success',
        'Google sign-in successful',
        snackPosition: SnackPosition.BOTTOM,
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      Get.snackbar(
        'Google Sign-In Failed',
        e.message ?? 'Authentication failed.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error',
        'Unable to sign in with Google.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await auth.signOut();
    await googleSignIn.signOut();
  }
}