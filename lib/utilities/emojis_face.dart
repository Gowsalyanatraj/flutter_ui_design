import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emojiFace;
  const EmojiFace({
    super.key,
    required this.emojiFace,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emojiFace,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
