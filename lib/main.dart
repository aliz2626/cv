import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'السيرة الذاتية',
      debugShowCheckedModeBanner: false,
      home: cvPage(),
    );
  }
}

class cvPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFB2FEFA), Color(0xFF0ED2F7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [

                        Container(
                          width: 92,
                          height: 92,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            image: DecorationImage(
                              image: AssetImage('image/1693364330892.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 14),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('علي زكريا الكثيري',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              SizedBox(height: 6),
                              Text('مطور Flutter • مهتم بتجربة المستخدم',
                                  style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 18),

                InfoCard(
                  title: 'الملخص',
                  child: Text(
                    'مطور شغوف بإنشاء تطبيقات موبايل سلسة وممتعة. أبحث عن فرصة للعمل في مشاريع واقعية لتطوير مهاراتي والمساهمة في حلول تقنية مفيدة.',
                    style: TextStyle(height: 1.4),
                  ),
                ),

                SizedBox(height: 18),

                InfoCard(
                  title: 'معلومات الاتصال',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactRow(icon: Icons.email, text: 'alkthiryali.zali26@gmail.com'),
                      ContactRow(icon: Icons.phone, text: '+967 775 643 395'),
                      ContactRow(icon: Icons.location_on, text: 'Yemen - Hadhramaut - Shibam'),
                    ],
                  ),
                ),

                SizedBox(height: 12),

                InfoCard(
                  title: 'المهارات',
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      SkillChip(label: 'Flutter'),
                      SkillChip(label: 'Dart'),
                      SkillChip(label: 'UI/UX'),
                      SkillChip(label: 'Firebase'),
                      SkillChip(label: 'Git'),
                      SkillChip(label: 'Python'),
                    ],
                  ),
                ),

                SizedBox(height: 12),

                InfoCard(
                  title: 'الخبرة العملية',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExperienceItem(
                        role: 'موظف استقبال',
                        companyAndTime: 'فندق رويال بلازا •  الآن',
                        description: 'استقبال العملاء وتسكينهم والاجابة عن كل الاستفسارات الخاصة بالفندق ',
                      ),
                      Divider(),
                      ExperienceItem(
                        role: 'متدرب برمجة',
                        companyAndTime: 'مشروع تخرج • 2025',
                        description: 'تطوير تطبيق باستخدام فلاتر لادارة فندق رويال بلازا',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12),

                InfoCard(
                  title: 'التعليم',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('بكالوريوس علوم الحاسوب — جامعة سيئون (2022 - 2026)'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class InfoCard extends StatelessWidget {
  final String title;
  final Widget child;
  InfoCard({required this.title, required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;
  ContactRow({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.teal[700]),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  SkillChip({required this.label});
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.white,
      shape: StadiumBorder(side: BorderSide(color: Colors.teal.shade200)),
      elevation: 2,
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String role;
  final String companyAndTime;
  final String description;
  ExperienceItem({required this.role, required this.companyAndTime, required this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(companyAndTime, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
          SizedBox(height: 6),
          Text(description),
        ],
      ),
    );
  }
}
