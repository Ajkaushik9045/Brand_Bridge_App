import '../../../Core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Bloc/Splash_Screen/bloc/splash_screen_bloc.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  SplashScreenWidgetState createState() => SplashScreenWidgetState();
}

class SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    _dispatchEvent(
        context); // This will dispatch the navigateToHomeScreen event.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff09203f),
              Color(0xff537895),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            "Brand Bridge",
            style: TextStyle(fontSize: 34, color: Appcolors.primaryColor),
          ),
        ),
      ),
    );
  }

  // This method will dispatch the navigateToHomeScreen event.
  void _dispatchEvent(BuildContext context) {
    BlocProvider.of<SplashScreenBloc>(context).add(
      NavigateToHomeScreenEvent(),
    );
  }
}
