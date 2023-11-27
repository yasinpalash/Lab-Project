import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  final List<String> skills = [
    'Flutter',
    'Dart',
    'JavaScript',
    'React',
    'Python',
    'HTML/CSS',
    'UI/UX Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
        centerTitle: true,
        backgroundColor: Colors.black54,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Adjust the number of columns as needed
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return SkillCard(skill: skills[index]);
          },
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;

  SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.code, size: 40.0, color: Colors.blue),
            SizedBox(height: 8.0),
            Text(
              skill,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SkillsPage(),
  ));
}