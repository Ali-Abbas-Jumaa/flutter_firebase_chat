import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.black54),
      //   ),
      // ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
      // home: YourClassName(),
    );
  }
}

class YourClassName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(text: '10', style: TextStyle(color: Colors.black)),
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(2, -4),
                child: Text(
                  '-6',
                  //superscript is usually smaller in size, you can change the size of it.
                  textScaleFactor: 0.8,
                  // you can change the color of your sign if you want.
                  // style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
