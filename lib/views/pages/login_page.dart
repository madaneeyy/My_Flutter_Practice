import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerpw = TextEditingController(text: '456');
  String confirmedEmail = '123';
  String confiremdPw = '456';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerpw.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (kDebugMode) {
      print('initstate');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return FractionallySizedBox(
                  widthFactor: widthScreen > 500 ? 0.5 : 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/lotties/registration.json',
                        height: 300.0,
                      ),
                      SizedBox(height: 50),
                      TextField(
                        controller: controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Email',

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onEditingComplete: () => setState(() {}),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: controllerpw,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onEditingComplete: () => setState(() {}),
                      ),
                      SizedBox(height: 10),
                      FilledButton(
                        onPressed: () {
                          onLoginPressed();
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 40.0),
                        ),
                        child: Text(widget.title),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confiremdPw == controllerpw.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
