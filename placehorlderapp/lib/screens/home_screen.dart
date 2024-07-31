import 'package:flutter/material.dart';
import 'post_list_screen.dart';
import 'todo_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Column(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostListScreen()),
                );
              },
              child: const Center(child: Text('POST', style: TextStyle(fontSize: 24))),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoScreen()),
                );
              },
              child: const Center(child: Text('TODOS', style: TextStyle(fontSize: 24))),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: const Center(child: Text('PROFILE', style: TextStyle(fontSize: 24))),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        ],
        onTap: (index) {
          String message;
          switch (index) {
            case 0:
              message = 'Home selected';
              break;
            case 1:
              message = 'Notification selected';
              break;
            case 2:
              message = 'Messages selected';
              break;
            default:
              message = '';
              break;
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        },
      ),
    );
  }
}
