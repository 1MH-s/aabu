import 'package:aabu/widgets/card_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AABU"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff0197a5),
              ),
              child: Text(
                'User name',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Get.offAllNamed("/");
              },
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
      body: Center(
        child: GridView(
          padding: const EdgeInsets.all(4.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: [
            CardButton(
              onPressed: () {
                //Get.to(const QrAttendance());
              },
              color: Colors.grey,
              image: Image.asset("assets/images/qr_icon.png"),
              title: "QR attendance",
            ),
            CardButton(
              onPressed: () {},
              color: Colors.grey,
              image: Image.asset("assets/images/map_icon.png"),
              title: "Map",
            ),
            CardButton(
              onPressed: () {},
              color: Colors.grey,
              image: Image.asset("assets/images/study_plan_icon.png"),
              title: "Study plan",
            ),
            CardButton(
              onPressed: () {},
              color: Colors.grey,
              image: Image.asset("assets/images/schedule_icon.png"),
              title: "Schedule",
            ),
          ],
        ),
      ),
    );
  }
}
