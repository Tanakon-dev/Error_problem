import 'package:flutter/material.dart';
import 'package:webapp/components/amount_field.dart';
import 'package:webapp/components/benefit_field.dart';
import 'package:webapp/components/program_field.dart';
import 'package:webapp/components/schoolname_field.dart';
//import 'package:webapp/my_input_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ระบบยื่นรับนักศึกษาฝึกสอน',
      theme: ThemeData(
        primarySwatch: Colors.green,
        //inputDecorationTheme: MyInputTheme().theme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แบบฟอร์มการรับนักศึกษาฝึกสอน"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(200, 20, 200, 50),
            children: const [
              SchoolNameField(),
              ProgramField(),
              AmountField(),
              BenefitField(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final isValid = _formKey.currentState!.validate();
            // ignore: avoid_print
            print("form is valid: $isValid");
          },
        ),
      ),
    );
  }
}
