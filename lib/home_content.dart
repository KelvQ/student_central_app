import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          SquareButton(icon: Icons.assessment, label: 'Progress'),
          SquareButton(icon: Icons.assignment, label: 'Planner'),
          SquareButton(icon: Icons.laptop, label: 'Study'),
          SquareButton(icon: Icons.chat, label: 'Chat'),
        ],
      ),
    );
  }
}

class SquareButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const SquareButton({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          // Handle button tap
          print('Tapped on $label');
        },
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
