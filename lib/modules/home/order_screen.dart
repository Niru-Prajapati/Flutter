import 'package:flutter/material.dart';

import '../../constants/app_text_styles.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  orderWidget() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              RichText(text: TextSpan(
                text: 'Order',style: AppTextStyle.poppinsMedium.copyWith(fontSize: 16),
                children: [
                  TextSpan(text: '# ',style: AppTextStyle.poppinsSemiBold.copyWith(
                      fontSize: 15,fontStyle: FontStyle.italic),
                  ),
                  TextSpan(text: ':',style: AppTextStyle.poppinsSemiBold.copyWith(
                      fontSize: 15,fontStyle: FontStyle.italic),
                  ),
                  TextSpan(text: '429242424',style: AppTextStyle.poppinsSemiBold.copyWith(
                      fontSize: 14,color: Colors.purple),
                  ),
                ],
              ),
              ),
              Text('\$1.50',style: AppTextStyle.poppinsBold.copyWith(
                fontSize: 18,
              ),),
            ],
          ),
          Text('Mon, July 3rd',style: AppTextStyle.poppinsMedium.copyWith(
            fontSize: 12,color: Colors.black,
          ),),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(6),
                child: Text('2.5 lbs',
                  style: AppTextStyle.poppinsMedium.copyWith(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff7169B9),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(6),
                child: Text('Shipped',
                  style: AppTextStyle.poppinsMedium.copyWith(
                    fontSize: 12,
                    color: Colors.purpleAccent,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 61,),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recent 0rders',
              style: AppTextStyle.poppinsMedium.copyWith(fontSize: 22),
          
              ),
              Text('Below are your most recent orders',
              style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 15),),
              SizedBox(height: 10,),
              ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  for(int i=0; i<21; i++)... [
                    orderWidget(),
                  ],
          
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
