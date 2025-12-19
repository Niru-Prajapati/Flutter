import 'package:flutter/material.dart';
import 'package:youtube/constants/app_text_styles.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Dashboard',
        style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 24),
      ),
      centerTitle: true,
      toolbarHeight: 80,
    ),

    body:Padding(
      padding: const EdgeInsets.all(16),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Beaches',
              style: AppTextStyle.poppinsMedium.copyWith(fontSize: 20),
            ),
            SizedBox(height: 16,),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2 ,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,),

              itemBuilder: (context,index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  padding: EdgeInsets.all(16),
                );
              },
                itemCount:2,
                primary:false,
                shrinkWrap:true,
              ),
          ],
        ),
      ),
    ),
    );
  }
}
