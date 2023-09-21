import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    /*try {
			if ( passwordController.text == confirmPasswordController.text ) {
				await FireBaseAuth.instance.createUserWithEmailAndPassword(
					email: emailController.text,
					password: passwordController.text,
				);
			}
			else {
				showErrorMSG( 'Passwords don't match' )
			}

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
            ),
          ),
        );
      },
    );
  }

  void loginPage() {
    goBack();
/*		Navigator.push(
			context,
			MaterialPageRoute(builder: (context) => LoginPage()),
		);*/
  }

  void goBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    //var theme = Theme.of(context);
    return Scaffold(
        //backgroundColor: theme.colorScheme.primaryContainer,
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: const Text('User Registration'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: goBack,
          ),
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

                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Center(
                    child: Text(
                      'Please register an account and let`s download some fresh content!',
                      textAlign:
                          TextAlign.center, // set the text alignment to center
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 59, 59),
                        fontSize: 16,
                      ),
                    ),
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

                //confirm password
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                //sign in button
                MyButton(
                  onTap: signUserUp,
                  text: 'Sign Up',
                ),

                //not a memger? register now
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: loginPage,
                        child: Text(
                          'Login now',
                          style: TextStyle(
                            color: Colors.blue[300],
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
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
