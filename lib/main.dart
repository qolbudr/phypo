import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:phypo/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phypo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.cyan,
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoGlow(),
          child: child!,
        );
      },
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () => Navigator.pushReplacement(
      context, CupertinoPageRoute(
        builder: (context) => Home()
      )
    ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarIconBrightness: Brightness.light, systemNavigationBarColor: Color(0xff272727))
    );
    return Scaffold(
      backgroundColor: const Color(0xffabb1cf),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xff272727),
              child: Center(
                child: Image.asset('assets/logo.png', width: 200),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NoGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
