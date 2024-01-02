import 'package:flutter/material.dart';

class designe extends StatefulWidget {
  const designe({super.key});

  @override
  State<designe> createState() => _designeState();
}

class _designeState extends State<designe> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Icon(Icons.group),

                Tab( child: Text('chats'),
                ),

                Tab( child: Text('Status'),
                ),

                Tab( child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.search_rounded),
              SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_sharp),
                itemBuilder: (context,) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('new gropa'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text('profiles'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text('Setting'),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          body: TabBarView(children: [
            Text('gurop'),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      radius: 30,
                    ),
                    title: Text('M.S.D'),
                    subtitle: Text('send the photo M.S.D'),
                    trailing: Text('4:00 PM'),
                  );
                }),

            Text('Status'),
            Text('Calls')
          ]),
        ));
  }
}
