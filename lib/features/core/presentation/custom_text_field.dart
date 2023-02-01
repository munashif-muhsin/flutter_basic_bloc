import 'package:flutter/material.dart';

import 'custom_field_wrapper.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String initialValue;
  final bool isObscured;
  final int maxLines;
  final bool isReadonly;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.initialValue,
    this.isObscured = false,
    this.maxLines = 1,
    this.isReadonly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFieldWrapper(
      label: label,
      child: TextFormField(
        readOnly: isReadonly,
        maxLines: maxLines,
        initialValue: initialValue,
        obscureText: isObscured,
        style: Theme.of(context).textTheme.titleLarge,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
