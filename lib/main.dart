import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner:false ,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 189, 184, 184),
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF3F51B5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/sc.jpg', 
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'samira farouk',
                    style: TextStyle
                      (fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),
                    ),

                    
                  
                  SizedBox(height: 5),
                  Text(
                    'Software Developer',
                    style: TextStyle
                      (fontSize: 18,
                      color: Colors.white70,),
                    ),
                  
                  SizedBox(height: 20),
                  ContactInfo(
                    icon: Icons.phone,
                    text: '01202443067',
                  ),
                  ContactInfo(
                    icon: Icons.email,
                    text: 'samirafarouk170@gmail.com',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
