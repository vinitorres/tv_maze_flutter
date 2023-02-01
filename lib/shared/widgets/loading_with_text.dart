import 'package:flutter/material.dart';

class LoadingWithText extends StatelessWidget {
  const LoadingWithText({
    super.key,
    required this.placeholderText,
  });

  final String placeholderText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          height: 76,
          child: Column(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 16,
              ),
              Text(
                placeholderText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
