import 'package:flutter/material.dart';

class Multiplication extends StatefulWidget {
  const Multiplication({super.key});

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Multiplication of two numbers',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xffce905a),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstNumberController,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondNumberController,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffecd38a),
                  ),
                  onPressed: () {
                    final firstNumber = int.tryParse(firstNumberController.text) ?? 0;
                    final secondNumber = int.tryParse(secondNumberController.text) ?? 0;
                    setState(() {
                      final multiplication = firstNumber * secondNumber;
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Result'),
                          content: Text('The multiplication is $multiplication'),
                        ),
                      );
                    });
                  }, // ?? -> null check operator
                  child: Text('Multiply Numbers'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}