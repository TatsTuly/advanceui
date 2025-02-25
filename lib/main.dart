import 'package:advanceui/page1.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Lab06());
}

class Lab06 extends StatelessWidget {
  const Lab06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced UI',
      home: Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.access_alarm_outlined,
                    size: 60,
                    color: Colors.blue,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(Icons.closed_caption_rounded),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_alt_rounded),
              title: Text("Contacts"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Contacts"),
              onTap: () {},
            ),
          ],
        )),
        appBar: AppBar(
          title: Text("Advance UI"),
        ),
        body: Myapp(),
      ),
    );
  }
}