import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:roshetty/ui/drawer_component/drawer_screen.dart';
import 'package:roshetty/ui/shared/shared_button.dart';

import 'shared/colors.dart';
import 'shared/custom_clipper_top.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool invisiblePassword = true;
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String , String> _authDate = {
    'email' : '',
    'password' : ''
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 120,
                color: blueColor52,
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
                      width: 90,
                    ),
                    Text('Login' , style: TextStyle(
                      fontSize: 24,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Image.asset(
                        'assets/images/login.png',
                        height: 180,
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
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
                              height: 25,
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
                                text: 'Log in' ,
                                function: (){
                                  if(!_formKey.currentState!.validate()) {
                                    return;
                                  } else {
                                    _formKey.currentState!.save();
                                    Navigator.push(
                                      context , MaterialPageRoute(
                                      builder: (context) => DrawerScreen()
                                    )
                                    );
                                  }
                                }
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(reverse: true),
                      child: Container(
                        height: 120,
                        color: pink42ColorEE,
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
