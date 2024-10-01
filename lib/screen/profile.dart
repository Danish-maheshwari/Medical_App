import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "My Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/danish.jpg"),
              ),
              title: Text("HI, Danish Kumar"),
              subtitle: Text("Welcome To Quick Medical Store"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: ListTile(
                leading: Icon(Icons.edit_note_outlined),
                title: Text("Edit Profile"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.library_books_rounded),
              title: Text("My Orders"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.watch_later),
              title: Text("Billing"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.question_mark),
              title: Text("Faq"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
