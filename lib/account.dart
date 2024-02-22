import 'package:flutter/material.dart';
import 'package:student_central_app/login.dart';
import 'main.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                // Placeholder icon for profile picture
                child: Icon(Icons.person, size: 50),
              ),
              SizedBox(height: 20),
              Text(
                'John Doe', // Replace with user's first and last name
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Email: johndoe@example.com', // Replace with user's email
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action for edit profile button
                },
                child: Text('Edit Profile'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Student Central')),
                  );
                },
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
