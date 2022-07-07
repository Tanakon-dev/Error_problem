import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                    //ปุ่มรับเพิ่ม
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                      child: const Text("รับเพิ่ม"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                      child: const Text("ยืนยัน"),
                    )
                  ],
                )
              ],
            ),
          )),
    ));
  }
}
//showDialogForm() {
  //return showDialog(
      //context: context,
//      builder: (context) {
//        return Center();
//      });
//}
