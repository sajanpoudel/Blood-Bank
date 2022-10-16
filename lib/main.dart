import 'package:flutter/material.dart';
import 'package:mobileapp/routes.dart';
// import 'package:mobileapp/screens/profile/profile_screen.dart';
import 'package:mobileapp/screens/splash/prompt_screen.dart';
import 'package:mobileapp/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood DOnation',
      theme: theme(),
      home: const PromptScreen(),
      
      routes: routes,
    );
  }
}
