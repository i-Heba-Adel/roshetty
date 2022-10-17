import 'package:flutter/material.dart';
import 'package:roshetty/ui/shared/search_container_info.dart';
import 'shared/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 24),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.close , size: 14,)),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: black05Color00
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    buildSearchContainerInfo(image: 'assets/images/ahmed_salah.png' , name: 'Ahmed Salah' , type: 'Doctor'),
                    buildSearchContainerInfo(image: 'assets/images/ahmed_salah.png' , name: 'Ahmed Salah' , type: 'Doctor'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
