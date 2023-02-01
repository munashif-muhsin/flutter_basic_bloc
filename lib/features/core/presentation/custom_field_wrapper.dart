import 'package:flutter/material.dart';

class CustomFieldWrapper extends StatelessWidget {
  final Widget child;
  final String label;
  final VoidCallback? onPressed;

  const CustomFieldWrapper({
    Key? key,
    required this.child,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        margin: const EdgeInsets.only(
          left: 50,
          right: 50,
          bottom: 14,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Text(
              label.toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
