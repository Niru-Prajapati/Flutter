import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();
  final thirdNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Interest Calculation',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xffA1BC98),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstNumberController,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter principle',
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
                  labelText: 'Enter time',
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: thirdNumberController,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter rate of interest',
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffecd38a),
                  ),
                  onPressed: () {
                    final principle = int.tryParse(firstNumberController.text) ?? 0;
                    final time = int.tryParse(secondNumberController.text) ?? 0;
                    final rate = int.tryParse(thirdNumberController.text) ?? 0;
                    setState(() {
                      final si = (principle * time * rate) / 100;
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Result'),
                          content: Text('The simple interest is $si'),
                        ),
                      );
                    });
                  },
                  child: Text('Calculate Simple Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}