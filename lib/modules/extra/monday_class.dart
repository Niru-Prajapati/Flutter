import 'package:flutter/material.dart';


class MondayClass extends StatefulWidget {
  const MondayClass({super.key});

  @override
  State<MondayClass> createState() => _monday_classState();

}
class _monday_classState extends State<MondayClass> {
  final firstNumberController=TextEditingController();
  final secondNumberController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MondayClass'),
        backgroundColor:Color(0xffAAC4F5),
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
                style: TextStyle(fontSize: 18, color: Colors.red),
                decoration: InputDecoration(
                  labelText: 'Enter first Number',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.purple),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondNumberController,
                style: TextStyle(fontSize: 18, color: Colors.red),
                decoration: InputDecoration(
                  labelText: 'Enter second Number',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.purple),
                  // border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffAAC4F5),
                    ),
                    onPressed: () {
                      final firstNumber=
                          int.tryParse(firstNumberController.text) ?? 0;
                      final secondNumber=
                          int.tryParse(secondNumberController.text) ?? 0;
                      setState(() {
                        final sum=firstNumber+secondNumber;
                        showDialog(
                            context: context,
                            builder: (context)=>AlertDialog(
                              title: Text('Result'),
                              content: Text('The sum is $sum' ),
                            ),);
                      });
                    }, child: Text('Add Numbers')),
              ),

            ],
          ),
        ),
      ),

      );

  }
}
