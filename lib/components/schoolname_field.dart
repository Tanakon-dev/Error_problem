import 'package:flutter/material.dart';

class SchoolNameField extends StatefulWidget {
  const SchoolNameField({
    super.key,
  });
  @override
  State<SchoolNameField> createState() => _SchoolNameFieldState();
}

class _SchoolNameFieldState extends State<SchoolNameField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (s) {
        if (s!.isEmpty) {
          return "กรุณากรอกข้อมูลให้ครบถ้วน";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "ชื่อโรงเรียนของท่าน",
        helperText: "",
        hintText: "",
      ),
    );
  }
}
