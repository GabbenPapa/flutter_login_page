import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';

//import 'pages/auth_page.dart';
/*import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';*/

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeAPP(
		options: DefaultFirebaeOptions.currentPlatform,
	);*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: AuthPage(),
      home: LoginPage(),
    );
  }
}
