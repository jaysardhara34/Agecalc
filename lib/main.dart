import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AgeCalc(),
    ),
  );
}

class AgeCalc extends StatefulWidget {
  const AgeCalc({Key? key}) : super(key: key);

  @override
  State<AgeCalc> createState() => _AgeCalcState();
}

class _AgeCalcState extends State<AgeCalc> {
  TextEditingController txtBirthyear = TextEditingController();
  TextEditingController txtCurrentyear = TextEditingController();
  int finalage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent.shade400,
        leading: Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        title: Text(
          "Age Calculator",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.keyboard_control,
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Birth Year :",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: txtBirthyear,
                decoration: InputDecoration(
                  label: Text("Birth Year"),
                  labelStyle: TextStyle(color: Colors.black54),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  prefixIcon: Icon(Icons.calendar_month, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Current Year :",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: txtCurrentyear,
                decoration: InputDecoration(
                  label: Text("Current Year"),
                  labelStyle: TextStyle(color: Colors.black54),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  prefixIcon: Icon(Icons.calendar_month, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  String Birthyear = txtBirthyear.text;
                  String Currentyear = txtCurrentyear.text;

                  int a = int.parse(Birthyear);
                  int b = int.parse(Currentyear);

                  setState(() {
                   finalage = b - a;
                  });
                },
                child: Expanded(
                  child: Card(
                    elevation: 30,
                    shadowColor: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500)),
                    child: SingleChildScrollView(
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.lightBlue,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.cyan, width: 1),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Expanded(
                    child: Text(
                      "Your Current Age : $finalage",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
