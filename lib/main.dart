import 'package:flutter/material.dart';
import 'package:whatsapp/chats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF008069),
          title: const Text('Whatsapp'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.photo_camera_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
          bottom: const TabBar(
            tabs: [Tab(text: 'CHATS'), Tab(text: 'STATUS'), Tab(text: 'CALLS')],
          ),
        ),
        body: TabBarView(
          children: [
            // Content of Tab 1
            Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    MessageCard(
                        sender: 'Sunethra',
                        message: 'Enaku BBQ venu!',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Yuvi',
                        message: 'Hey, Call me',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Varsha', message: 'Lol', time: '12:00AM'),
                    MessageCard(
                        sender: 'Subhiksha',
                        message: 'Hey, Iniki en boy bestie call panuvan da!',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Sai',
                        message: 'Pesama nee en saava koodathu?',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Hema Akka',
                        message: 'Dei Notes send pandra',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Kanishka Mental',
                        message: 'Sticker',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Jawahar', message: 'Sticker', time: '12:00AM'),
                    MessageCard(
                        sender: 'Arun',
                        message: 'Pondy vanthu irrukan',
                        time: '12:00AM'),
                    MessageCard(
                        sender: 'Ananth', message: 'Sticker', time: '12:00AM'),
                    MessageCard(
                        sender: 'Gokul', message: 'Sticker', time: '12:00AM'),
                    MessageCard(
                        sender: 'Surya', message: 'Sticker', time: '12:00AM'),
                  ],
                ),
              ),
            ),

            // Content of Tab 2
            const Center(
              child: Text('status'),
            ),

            const Center(
              child: Text('calls'),
            )
          ],
        ),
      ),
    );
  }
}
