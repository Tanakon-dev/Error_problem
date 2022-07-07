import 'package:flutter/material.dart';

class BenefitField extends StatelessWidget {
  const BenefitField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      decoration: InputDecoration(
          helperText: "",
          hintText: "",
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("สวัสดิการ"),
              ),
            ],
          )),
    );
  }
}
