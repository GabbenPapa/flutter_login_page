import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //final user = FirebaseAuth.instance.currentUser

  void signUserOut() {
    //FirebaseAuth.instance.signOut();
    print('Signed out');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[400], actions: [
        IconButton(
          onPressed: signUserOut,
          icon: const Icon(Icons.logout),
        )
      ]),
      body: const Center(
        // child: Text("LOGGED IN" + user.email!,
        child: Text("LOGGED IN"),
      ),
    );
  }
}
