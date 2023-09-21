import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';

class ForgotPasswordPage extends StatefulWidget {
  final Function()? onTap;
  const ForgotPasswordPage({super.key, this.onTap});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final forgotEmailController = TextEditingController();

  void submitPassword() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  void goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    //var theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: const Text('Forgotten Password'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: goBack,
          ),
        ),

        //backgroundColor: theme.colorScheme.primaryContainer,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/ShowImage.png',
                      height: 70,
                    )
                  ],
                ),
                const SizedBox(height: 50),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Text(
                      'Forgot your Password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 59, 59),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Text(
                      'Enter your email below to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 59, 59),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                //username
                MyTextField(
                  controller: forgotEmailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  onTap: submitPassword,
                  text: 'Submit',
                ),
              ],
            ),
          ),
        )));
  }
}
