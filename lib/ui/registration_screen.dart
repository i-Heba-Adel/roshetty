import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:roshetty/ui/login_screen.dart';

import 'shared/colors.dart';
import 'shared/custom_clipper_top.dart';
import 'shared/shared_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  bool invisiblePassword = true;
  bool invisibleConfirmPassword = true;
  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map<String , String> _authDate = {
    'fname' : '',
    'lname' : '',
    'address' : '',
    'phone' : '',
    'email' : '',
    'password' : '',
    'confirmPassword' : '',
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              // clipBehavior: ,
              children: [
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 120,
                    color: pink42ColorEE,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text('Registration' , style: TextStyle(
                          fontSize: 24,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/sign_up.png',
                      height: 180,
                    ),
                    Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('First Name',),
                                  prefixIcon: Icon(Icons.person),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Invalid Name';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['fname'] = value!;
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('Last Name',),
                                  prefixIcon: Icon(Icons.person),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Invalid Name';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['lname'] = value!;
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('Phone',),
                                  prefixIcon: Icon(Icons.phone),
                                ),
                                keyboardType: TextInputType.number,
                                validator: (value){
                                  if(value!.length < 11){
                                    return 'Invalid Phone Number';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['phone'] = value!;
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('Address',),
                                  prefixIcon: Icon(Icons.home),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Invalid Address';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['address'] = value!;
                                  print(_authDate['address']);
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('Email',),
                                  prefixIcon: Icon(Icons.email_outlined),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value){
                                  if(value!.isEmpty || !value.contains('@')){
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['email'] = value!;
                                  print(_authDate['email']);
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        invisiblePassword = !invisiblePassword;
                                      });
                                    },
                                    icon: Icon(invisiblePassword ? Icons.visibility : Icons.visibility_off,),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('Password',),
                                  prefixIcon: Icon(Icons.lock_outline),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value!.length < 6){
                                    return 'Invalid Password';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['password'] = value!;
                                  print(_authDate['password']);
                                },
                                obscureText: invisiblePassword,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        invisibleConfirmPassword = !invisibleConfirmPassword;
                                      });
                                    },
                                    icon: Icon(invisibleConfirmPassword ? Icons.visibility : Icons.visibility_off,),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  label: Text('Confirm Password',),
                                  prefixIcon: Icon(Icons.lock_outline),
                                ),
                                keyboardType: TextInputType.text,
                                validator: (value){
                                  if(value!.length < 6){
                                    return 'Invalid Password';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authDate['password'] = value!;
                                  print(_authDate['password']);
                                },
                                obscureText: invisibleConfirmPassword,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text('Forgot password?' , style: TextStyle(
                                    color: tealColor1B,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              buildMaterialButton(
                                  text: 'Registration' ,
                                  function: (){
                                    if(!_formKey.currentState!.validate()) {
                                      return;
                                    } else {
                                      _formKey.currentState!.save();
                                      Navigator.push(
                                        context , MaterialPageRoute(
                                        builder: (context) => LoginScreen()
                                      )
                                      );
                                    }
                                  }
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(reverse: true),
                      child: Container(
                        height: 120,
                        color: blueColor52,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
