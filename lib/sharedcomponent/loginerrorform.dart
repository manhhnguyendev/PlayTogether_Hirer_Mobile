import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.listError,
  }) : super(key: key);

  final List listError;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        listError.length,
        (index) => formErrorText(listError[index]),
      ),
    );
  }

  Row formErrorText(String error) {
    return Row(
      children: [
        Text(
          error,
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}
