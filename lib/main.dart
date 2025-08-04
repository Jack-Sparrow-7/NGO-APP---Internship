import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/screens/home_screen.dart';
import 'package:ngo_app/screens/volunteer_screen.dart';

void main() {
  runApp(
    DevicePreview(
      defaultDevice: DeviceInfo.genericPhone(
        platform: TargetPlatform.iOS,
        id: 'iphone-16-pro-max',
        name: 'iPhone 16 Pro Max',
        screenSize: Size(440, 956), // Example dimensions
      ),
      backgroundColor: Color(0xFF141218),
      isToolbarVisible: false,
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/volunteer': (context) => VolunteerScreen(),
      },
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.blue,
          selectionColor: Colors.blue.shade100,
          selectionHandleColor: Colors.blue,
        ),
        textTheme: GoogleFonts.publicSansTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
