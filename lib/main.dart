import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginfire/login.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginfire/signUp.dart';
// void main() {
//   runApp(const MyApp());
// }
final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyDoGx3Gxy6utfx_O2xk7K2xNBs0QGlBdDc',
        appId: '1:272345755335:web:ae2e4b48863257185cd8e2',
        messagingSenderId: '272345755335',
        projectId: 'loginfire-8de07')
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a blue toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
        debugShowCheckedModeBanner: false,
      home: signup1(),
      // navigatorKey: navigatorKey,
      // routes: {'/login_screen': (context) => const signup1()},
    );
  }
}


// class AuthStateChangesExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           User? user = snapshot.data;
//
//           if (user == null) {
//             // User is signed out
//             return signup1(); // Replace with your sign-in screen
//           } else {
//             // User is signed in
//             return signup1(); // Replace with your home screen
//           }
//         }
//
//         return signup1(
//
//         ); // Replace with a loading indicator or screen
//       },
//     );
//   }
// }



