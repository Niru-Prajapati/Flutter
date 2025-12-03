import 'package:flutter/material.dart';

class IdentityCard extends StatefulWidget {
  const IdentityCard({super.key});

  @override
  State<IdentityCard> createState() => _IdentityCardState();
}

class _IdentityCardState extends State<IdentityCard> {
  textWidget(String title, String subtitle){
    return  RichText(
      text: TextSpan(
      text: title,
      style:TextStyle(color: Colors.black,fontSize: 16),
        children:[
          TextSpan(
            text: subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            fontWeight: FontWeight.bold,
            ),
          ),
        ],

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('My Card',
          style: TextStyle(color: Colors.black,fontSize: 22),
      ),
      ),
      body: Center(
        child: Container(
          height: 230,
            width: double.infinity,
            margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blueGrey,width: 2),
          ),
          child: Row(
            children: [
              Flexible(
                child: Container(
                height: 150,
                            width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/0-02-03-7319a56de652dbdb3f67e9217d5729888d07886a866b021da473b38d1b76ddd5_b0cd8669.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    textWidget('Name: ','Niru Prajapati'),
                    textWidget('Age: ', '23'),
                   textWidget('Address: ', 'Madhyapur Thimi, Bhaktapur'),
                    textWidget('Level: ', 'BCA'),
                    textWidget('DOB: ', '2058/09/22'),
                    textWidget('Phone: ', '9866434346'),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
