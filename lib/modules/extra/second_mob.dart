import 'package:flutter/material.dart';


class SecondMob extends StatefulWidget {
  const SecondMob({super.key});

  @override
  State<SecondMob> createState() => _SecondMobState();
}

class _SecondMobState extends State<SecondMob> {
  int value=0;

  void decrement(){
    if(value>0) {
      setState(() {
        value--;
      });
    }else{
      print("value cannot be negative");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Flutter App',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle:FontStyle.italic,
            color:Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
                'The value is $value',
                style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,

            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(15),
                      elevation: 0,
                      shape: CircleBorder(),

                    ),
                    onPressed: () {
                      setState(() {
                        value+=1;
                      });
                    }, child: Icon(Icons.add,size: 30,color: Colors.red),
                ),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.all(15),
                        elevation: 0,
                        shape: CircleBorder(),
                    ),
                    onPressed: () {
                      decrement();

                    }, child: Icon(Icons.remove,size: 30,color: Colors.yellow)),
              ],
            ),
          ],
        ),
      ),

    );

  }
}
