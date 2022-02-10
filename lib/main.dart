import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task1/Providers/auth.dart';

import 'package:task1/routes.dart';
import 'package:task1/screens/loginscreen.dart';
import 'screens/homescreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => User())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginScreen(),
      },
      // onGenerateRoute: _getRoute,
    );
  }
}

// Route<dynamic> _getRoute(User u) {
//   if (u.vaidate != '/login') {
//     return null;
//   }

//   return MaterialPageRoute<void>(
//     settings: u,
//     builder: (BuildContext context) => LoginScreen(),
//     fullscreenDialog: true,
//   );
// }
