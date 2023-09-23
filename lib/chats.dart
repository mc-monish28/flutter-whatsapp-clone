import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MessageCard(
          sender: 'John',
          message: 'Hey, how are you?',
          time: '10:30 AM',
        ),
        MessageCard(
          sender: 'Alice',
          message: 'I am good, thanks!',
          time: '10:35 AM',
        ),
        // Add more MessageCard widgets for other messages
      ],
    );
  }
}

class MessageCard extends StatelessWidget {
  final String sender;
  final String message;
  final String time;

  MessageCard(
      {required this.sender, required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          // You can use an image or initials for the user avatar
          backgroundColor: const Color(0xFF008069),
          child: Text(
            sender.substring(0, 1),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(sender),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message),
            const SizedBox(height: 4.0),
            Text(
              time,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        onTap: () {
          // Handle tapping on the message card here
        },
      ),
    );
  }
}

class MyFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add functionality for the FAB here
      },
      child: Icon(Icons.add), // You can replace this with your desired icon
      backgroundColor: Colors.blue, // Customize the FAB's background color
    );
  }
}
