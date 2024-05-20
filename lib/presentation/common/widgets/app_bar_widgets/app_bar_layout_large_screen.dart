import 'package:flutter/material.dart';

class AppBarLayoutLargeScreen extends StatelessWidget {
  const AppBarLayoutLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0),
            prefixIcon:
            const Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
