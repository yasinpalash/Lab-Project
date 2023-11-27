import 'package:alllabapps/Portfolio_app/portfolio.dart';
import 'package:alllabapps/Portfolio_app/skill.dart';
import 'package:alllabapps/Portfolio_app/work.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'experiences.dart';



class HomeScreenPortfolio extends StatelessWidget {
  HomeScreenPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Personal Portfolio'),
            backgroundColor: Colors.teal,
            centerTitle: true,
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.code),
                text: 'Skill',
              ),
              Tab(
                icon: Icon(Icons.work),
                text: 'Work',
              ),
              Tab(
                icon: Icon(Icons.work_outline),
                text: 'experiences',
              ),
              Tab(
                icon: Icon(Icons.photo_library),
                text: 'Portfolio',
              ),
            ]),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  accountName:
                  Text('Yasin Mia Palash'), // Replace with your name
                  accountEmail: Text(
                      'yasin15-3615@diu.edu.bd'), // Replace with your email
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1483909796554-bb0051ab60ad?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Replace with your profile image asset
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AboutPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('Skills'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SkillsPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Work'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WorkPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.work_history),
                  title: Text('Experiences'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ExperiencesPage())); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Portfolio'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PortfolioPage())); // Close the drawer
                  },
                ),
                // Add more drawer items for other sections/pages
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AboutPage(),
              SkillsPage(),
              WorkPage(),
              ExperiencesPage(),
              PortfolioPage()
            ],
          ),
        ));
  }
}