import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var value = '';
  var operator = '';
  var valueAdded = '';
  var didOnce = 0;
  double answer = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    margin: const EdgeInsets.all(5),
                    width: 275,
                    height: 150,
                    color: Colors.blueAccent,
                    child: Text(
                      "$value $operator $valueAdded\n = $answer",
                      style: const TextStyle(
                        fontSize: 28,
                        color: Color(0xffffffff),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                    margin: const EdgeInsets.all(2),
                    width: 90,
                    height: 140,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        if (operator == '') {
                          answer = double.parse(value);
                        } else {
                          if (operator != "%" && operator != "|x|") {
                            if (operator == "+") {
                              answer = double.parse(value) +
                                  double.parse(valueAdded);
                            } else if (operator == "-") {
                              answer = double.parse(value) -
                                  double.parse(valueAdded);
                            } else if (operator == "*") {
                              answer = double.parse(value) *
                                  double.parse(valueAdded);
                            } else if (operator == "/") {
                              if (double.parse(valueAdded) != 0) {
                                answer = double.parse(value) /
                                    double.parse(valueAdded);
                              } else {
                                answer = 0;
                              }
                            }
                          } else {
                            if (operator == "%") {
                              value = ((double.parse(value) / 100)).toString();
                              answer = double.parse(value);
                            } else if (operator == '|x|') {
                              answer = (double.parse(value).abs());
                            }
                          }
                        }
                        didOnce = 1;
                        operator = '';
                        valueAdded = '';
                        value = (answer).toString();
                        setState(() {});
                      },
                      child: const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5,15,5,5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '7';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '7';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '7',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5,15,5,5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '8';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '8';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '8',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5,15,5,5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '9';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '9';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '9',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5,15,5,5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '0';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '0';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '0',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '4';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '4';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '4',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '5';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '5';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '5',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '6';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '6';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '6',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (value != '') {
                          operator = "+";
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent, // Background color
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '1';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '1';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '2';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator != '' &&
                            (operator != "%" && operator != "|x|")) {
                          valueAdded += '2';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        if (operator == '' && didOnce == 0) {
                          value += '3';
                          if (value.length > 7) {
                            value = value.substring(0, value.length - 1);
                          }
                        } else if (operator.isNotEmpty &&
                            operator != "%" &&
                            operator != "|x|") {
                          valueAdded += '3';
                          if (valueAdded.length > 7) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '3',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (value != '') {
                          operator = "-";
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '-',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (value != '') {
                          operator = "|x|";
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '|x|',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (value != '') {
                          operator = "%";
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '%',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (value != '') {
                          operator = "/";
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '/',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (value != '') {
                          operator = "*";
                        }
                        setState(() {});
                      },
                      child: const Text(
                        '*',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                    width: 120,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        value = '';
                        valueAdded = '';
                        operator = '';
                        answer = 0.0;
                        didOnce = 0;
                        setState(() {});
                      },
                      child: const Text(
                        'Clear',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(110, 10, 15, 5),
                    width: 70,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {
                        if (operator != '') {
                          if (valueAdded.isNotEmpty) {
                            valueAdded =
                                valueAdded.substring(0, valueAdded.length - 1);
                          }
                        } else {
                          if (value.isNotEmpty) {
                            value = value.substring(0, value.length - 1);
                          }
                        }
                        setState(() {});
                      },
                      child: const Text(
                        'C',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
