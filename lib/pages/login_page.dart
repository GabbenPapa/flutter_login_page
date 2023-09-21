import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';
import 'register_page.dart';
import 'forgot_pass_page.dart';

class LoginPage extends StatefulWidget {
  //final Function()? onTap;
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    /*try {
			await FireBaseAuth.instance.signInWithEmailAndPassword(
				email: emailController.text,
				password: passwordController.text,
			);
			Navigator.pop(context);
			} on FirebaseAutException catch (e) {
				Navigator.pop(context);
				showErrorMSG( e.code );
				}
		}*/
  }

  void showErrorMSG(String errorText) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.orange,
              title: Center(
                  child: Text(
                errorText,
                style: const TextStyle(color: Colors.white),
              )));
        });
  }

  void forgotPassPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
    );
  }

  void registerPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    //var theme = Theme.of(context);

    return Scaffold(
        //backgroundColor: theme.colorScheme.primaryContainer,
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: const Text('Login'),
        ),
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

                const Text(
                  'Welcome back, let`s download some fresh content!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 59, 59, 59),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                //username
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyTextBtn(
                        onTap: forgotPassPage,
                        text: 'Forgot Password',
                        myColor: Colors.grey[600]!,
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  onTap: signUserIn,
                  text: 'Sign In',
                ),

                //not a memger? register now
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(width: 10),
                      MyTextBtn(
                        onTap: registerPage,
                        text: 'Register now',
                        myColor: Colors.blue[300]!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
