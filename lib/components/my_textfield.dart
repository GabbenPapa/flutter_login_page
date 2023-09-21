import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
	final TextEditingController controller;
	final String hintText;
	final bool obscureText;

	const MyTextField({
		Key? key,
		required this.controller,
		required this.hintText,
		required this.obscureText,
	}) : super(key: key);

	@override
	_MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
	bool showPassword = false;

	@override
	Widget build(BuildContext context) {
		return Padding(
			padding: const EdgeInsets.symmetric(horizontal: 25.0),
			child: TextField(
				controller: widget.controller,
				obscureText: widget.obscureText && !showPassword,
				decoration: InputDecoration(
					enabledBorder: const OutlineInputBorder(
						borderSide: BorderSide(color: Colors.white),
					),
					focusedBorder: OutlineInputBorder(
						borderSide: BorderSide(color: Color.fromARGB(255, 175, 175, 175)),
					),
					fillColor: Color.fromARGB(255, 240, 240, 240),
					filled: true,
					hintText: widget.hintText,
					hintStyle: TextStyle(color: Colors.grey[500]),
					suffixIcon: widget.obscureText
							? GestureDetector(
									onTap: () {
										setState(() {
											showPassword = !showPassword;
										});
									},
									child: Icon(
										showPassword
												? Icons.visibility
												: Icons.visibility_off,
										color: Colors.grey[500],
									),
								)
							: null,
				),
			),
		);
	}
}