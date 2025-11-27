import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'identity_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff76153C),
      appBar:AppBar(
        centerTitle: true,
        title: Text('Home Page',
          style: TextStyle(color: Colors.black,fontSize: 22),
      ) ,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed:(){
            Navigator.pushNamed(context,
                AppRoute.login);
          }, child: Text('Login')),
          ElevatedButton(onPressed:(){
            Navigator.pushNamed(
              context,
             AppRoute.identityCard
            );
          }, child: Text('Identity Card')),
          ElevatedButton(onPressed:(){}, child: Text('Second Mob')),
          ElevatedButton(onPressed:(){}, child: Text('Mobile App')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context,
                AppRoute.signup);
          }, child: Text('Signup')),
        ],
      ),
    );
  }
}
