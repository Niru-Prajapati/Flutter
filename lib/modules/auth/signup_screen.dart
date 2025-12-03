import 'package:flutter/material.dart';
import 'package:youtube/constants/app_text_styles.dart';

import '../../constants/app_routes.dart';

//import 'constants/app_routes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final fullNameController=TextEditingController();
  final phoneController=TextEditingController();
  bool isObscure=true;
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xffF3E8DF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: 30,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png', width: 200),
                SizedBox(height: 8),
                Text(
                  'Get On Board!',
                  style: AppTextStyle.poppinsBold.copyWith(fontSize: 28),
            
                ),
                Text(
                  'Create your profile to start your journey.',
                  style: AppTextStyle.poppinsMedium.copyWith(fontSize: 16),
            
                ),
                SizedBox(height: 20),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
                  keyboardType: TextInputType.text,
                  controller: fullNameController,
                  validator: (value){
                    if(value==null || value.isEmpty) {
                      return 'please enter your Full Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle:AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1
                      ),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    prefixIcon: Icon(Icons.person,size: 26,),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value){
                    if(value==null || value.isEmpty) {
                      return 'please enter your email';
                    } else if (!value.contains('@')){
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                    hintStyle:AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1
                      ),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    prefixIcon: Icon(Icons.mail,size: 26,),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  validator: (value){
                    if(value==null || value.isEmpty) {
                      return 'please enter your phone number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Phone No.',
                    hintStyle:AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1
                      ),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    prefixIcon: Icon(Icons.phone,size: 26,),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
                  controller: passwordController,
                  validator: (value){
                    if(value==null || value.isEmpty) {
                      return 'please enter your password';
                    } else if (value.length<8){
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle:AppTextStyle.poppinsRegular.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1
                      ),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    prefixIcon: Icon(Icons.fingerprint,size: 26,),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
            
                    },
                      icon: Icon(
                          isObscure ? Icons.visibility_off: Icons.visibility),
                    ),
                  ),
                ),
            
                SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    minimumSize: Size(double.infinity,56),
                  ),
                  onPressed: () {
                    if(formKey.currentState!.validate()) {
                      print('Email: ${emailController.text}');
                      print('Password: ${passwordController.text}');
                      print('Full Name:${fullNameController.text}');
                      print('Phone No:${phoneController.text}');
                    }
                  },
                  child: Text('Signup'.toUpperCase(),
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'or'.toUpperCase(),
                    style: AppTextStyle.poppinsRegular.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    minimumSize: Size(double.infinity,56),
                  ),
                  onPressed: () {},
                  child: Text('Connect with Phone Number',
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    backgroundColor: Color(0xffc6d8e4),
                    minimumSize: Size(double.infinity,60),
                    side: BorderSide(color: Color(0xffc6d8e4),width: 1.5),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Google.svg',
                        width: 26,
                        height: 26,
                      ),
                      SizedBox(width: 10),
                      Text('Connect with Google',
                        style: AppTextStyle.poppinsMedium.copyWith(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an Account?',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ) ,
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoute.login);
                      },
                    child: Text(
                      'Login',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                    ),
                  ],
                ),
             
              ],
            
            ),
          ),
        ),
      ),
    );
  }
}
