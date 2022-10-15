import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:roshetty/ui/shared/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 120,
              color: tealColor60,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text('Edit Profile' , style: TextStyle(
                    fontSize: 22,
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
                  CircleAvatar(
                    foregroundColor: blueColor,
                    radius: 45,
                    child: CircleAvatar(
                      backgroundColor: whiteColorFF,
                      radius: 39,
                      child: Image(
                        image: AssetImage('assets/images/user.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Alaa Mohammed',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    'alaamohammed@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: greyColor58
                    ),
                  ),
                  Form(
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
                            
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
