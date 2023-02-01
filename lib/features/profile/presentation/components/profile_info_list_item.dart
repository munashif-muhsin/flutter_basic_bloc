import 'package:flutter/material.dart';

class ProfileInfoListItem extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool isObscured;

  const ProfileInfoListItem({
    Key? key,
    required this.label,
    required this.initialValue,
    this.isObscured = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          TextFormField(
            initialValue: initialValue,
            obscureText: isObscured,
            style: Theme.of(context).textTheme.titleLarge,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ],
      ),
    );
  }
}
