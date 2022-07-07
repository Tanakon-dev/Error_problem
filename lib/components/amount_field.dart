import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountField extends StatelessWidget {
  const AmountField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: true,
      ),
      validator: (s) {
        if (s!.isEmpty) {
          return "กรุณากรอกข้อมูลให้ครบถ้วน";
        }
        return null;
      },
      maxLength: 10,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: const InputDecoration(
        labelText: "จำนวนของนักศึกษา",
        helperText: "",
        hintText: "",
      ),
    );
  }
}
