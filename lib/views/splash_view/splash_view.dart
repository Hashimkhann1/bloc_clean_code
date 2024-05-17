import 'package:bloc_clean_coding/config/components/internet_excepetion_widget.dart';
import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:bloc_clean_coding/services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  final SplashService _splashService = SplashService();

  @override
  void initState() {
    _splashService.isLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Center(child: Text("Splash Screen",style: TextStyle(fontSize: 22),))
          ],
        ),
      ),
    );
  }
}
