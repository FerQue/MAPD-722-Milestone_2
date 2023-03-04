// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:milestone_2/UI/circle.dart';
import 'package:milestone_2/UI/square.dart';


class HomePage extends StatelessWidget {
  int _selectedIndex =0;
  
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];
  HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace

          //instagram stories
          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return MyCircle(
                child: _stories[index],
              );
            }),
          ),


          //instragram posts
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                    return MySquare(
                      child: _posts[index],
                      );
                    }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
       
        type: BottomNavigationBarType.fixed,
      
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      );
    
  }
  
  void setState(Null Function() param0) {}
  

  
 
}



