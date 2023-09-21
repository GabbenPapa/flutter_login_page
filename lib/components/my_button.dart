import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
	final Function()? onTap;
	final String text;

	const MyButton({super.key, this.onTap, required this.text});

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onTap,
			child: Container(
				padding: const EdgeInsets.all(25),
				margin: const EdgeInsets.symmetric(horizontal: 25),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(8),
					color: Colors.black
				),
				child: Center(
					child: Text(
						text,
						style: const TextStyle(
							color: Colors.white,
							fontSize:16,
							fontWeight: FontWeight.bold
						),
					)
				),
			),
		);
	}
}

class MyTextBtn extends StatelessWidget {
	final Function()? onTap;
	final String text;
	final Color myColor;

	const MyTextBtn({super.key, this.onTap, required this.text, required this.myColor });

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onTap,
			child: Text(
				text,
				style: TextStyle(
					color: myColor,
					fontWeight: FontWeight.bold,
					decoration: TextDecoration.underline,
				),
			),
		);
	}
}