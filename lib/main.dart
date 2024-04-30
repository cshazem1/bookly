

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constans.dart';
import 'core/utils/app_roter.dart';
import 'core/utils/service_located.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme:
            GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
