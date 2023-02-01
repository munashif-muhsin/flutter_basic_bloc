import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'custom_field_wrapper.dart';

class CustomDatePicker extends StatefulWidget {
  final String label;
  final DateTime initialValue;

  const CustomDatePicker({
    Key? key,
    required this.label,
    required this.initialValue,
  }) : super(key: key);

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime dateTime;

  @override
  void initState() {
    dateTime = widget.initialValue;
    super.initState();
  }

  void changeDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: widget.initialValue,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      setState(() {
        dateTime = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomFieldWrapper(
      onPressed: () => changeDate(context),
      label: widget.label,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          DateFormat("dd/MM/yyy").format(dateTime),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
