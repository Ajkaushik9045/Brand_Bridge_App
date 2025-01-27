import 'package:flutter/material.dart';

class AppText {
  //App title name
  static const String appTitle = 'Brand Brand';

  //Local Host Api

  static String uri = "http://localhost:3000";

  // Splash Screen Text

  //Login Screen Text
  static const loginText = "Login";
  static const emailText = "Enter your Email";
  static const passwordText = "Enter Password";
  static const forgotPasswordText = "Forgot Password?";

// Sign Up Screen
  static const signUpText = "Sign Up";
  static const confirmPasswordText = "Confirm Password";

// Logout Text
  static const logoutText = "Logout";

  //internet Exception Text
  static const internetExceptionText = "No Internet Connection";

// nav Bar  pages Text
  static const homeText = "Home";
  static const settingsText = "Settings";
  static const profileText = "Profile";
  static const chattext = "Chat";
}

// hieght & Width
class AppSize {
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
