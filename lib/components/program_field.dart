import 'package:flutter/material.dart';

class ProgramField extends StatelessWidget {
  const ProgramField({super.key});

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
        labelText: "สาขาที่ต้องการ",
        helperText: "",
        hintText: "",
      ),
    );
  }
}
