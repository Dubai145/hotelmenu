import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: first(),
  ));
}

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  String hh = "Male";
  bool panistatus = false;
  bool vadastatus = false;
  bool Dosastatus = false;
  int m1 = 0;
  int m2 = 0;
  int m3 = 0;
  int sum = 0;

  void call() {
    // setState(() {
    //   if (panistatus == true) {
    //     m1 = 10;
    //     sum = m1 + m2 + m3;
    //   } else if (panistatus == false) {
    //     m1 = 0;
    //     sum = m1 + m2 + m3;
    //   }
    //   if (vadastatus == true) {
    //     m2 = 20;
    //     sum = m1 + m2 + m3;
    //   } else if (vadastatus == false) {
    //     m2 = 0;
    //     sum = m1 + m2 + m3;
    //   }
    //   if (vadastatus == true) {
    //     m2 = 20;
    //     sum = m1 + m2 + m3;
    //   } else if (vadastatus == false) {
    //     m2 = 0;
    //     sum = m1 + m2 + m3;
    //   }
    //   if (Dosastatus == true) {
    //     m3 = 20;
    //     sum = m1 + m2 + m3;
    //   } else if (Dosastatus == false) {
    //     m3 = 0;
    //     sum = m1 + m2 + m3;
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jamunesh Villa Garden Menu"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                // Radio(
                //   activeColor: Colors.black,
                //   value: hh,
                //   groupValue: "Male",
                //   onChanged: (value) {
                //     hh = "Male";
                //     setState(
                //       () {
                //         value = hh;
                //       },
                //     );
                //     print("male==$hh");
                //   },
                // ),
                // Text("male"),
                // Radio(
                //   activeColor: Colors.black,
                //   value: hh,
                //   groupValue: "Female",
                //   onChanged: (value) {
                //     hh = "Female";
                //     setState(() {
                //       value = hh;
                //     });
                //     print("Female==$hh");
                //   },
                // ),
                // Text("Female"),
                // Radio(
                //   activeColor: Colors.black,
                //   value: hh,
                //   groupValue: "other",
                //   onChanged: (value) {
                //     hh = "other";
                //     setState(() {
                //       value = hh;
                //     });
                //     print("other==$hh");
                //   },
                // ),
                // Text("other"),
              ],
            ),
            Row(
              children: [
                Text("panipuri = 10"),
                Checkbox(
                  value: panistatus,
                  onChanged: (value) {
                    setState(() {
                      panistatus = value!;
                      call();
                      getvalue(panistatus, 10);
                    });
                    print("==$value");
                    print("pani==$hh");
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text("vadapav = 20"),
                Checkbox(
                  value: vadastatus,
                  onChanged: (value) {
                    setState(() {
                      vadastatus = value!;
                      call();

                      getvalue(vadastatus, 20);
                    });
                    print("==$value");
                    print("vada=$m2");
                  },
                )
              ],
            ),
            Row(
              children: [
                Text("Dosa = 20"),
                Checkbox(
                  value: Dosastatus,
                  onChanged: (value) {
                    setState(() {
                      Dosastatus = value!;
                      call();
                      getvalue(Dosastatus, 20);
                    });
                    print("==$value");
                    print("Dosa=$m3");
                  },
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 400,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "Total Bill Amount= $sum",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void getvalue(bool status, int i) {
    if (status) {
      sum = sum + i;
    } else {
      sum = sum - i;
    }
  }
}
