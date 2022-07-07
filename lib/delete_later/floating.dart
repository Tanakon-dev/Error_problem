import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  const Floating({super.key});

  @override
  State<Floating> createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(100, 20, 100, 80),
      child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //ชื่อโรงเรียน
                TextFormField(
                  //validator: (String input) {
                  //if (input.isEmpty) {
                  //return "กรุณากรอกข้อมูล";
                  //}
                  //return null;
                  //},
                  autofocus: true,
                  decoration:
                      const InputDecoration(labelText: "ชื่อโรงเรียนปลายทาง"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //สาขา
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "สาขาที่ต้องการ"),
                      ),
                      //จำนวน
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            const InputDecoration(labelText: "จำนวนนักศึกษา"),
                      ),
                      //สวัสดิการ
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "สวัสดิการ"),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("รับเพิ่ม"),
                    ),
                    //ปุ่มเพิ่ม
                  ],
                )
              ],
            ),
          )),
    ));
  }
}
