import 'package:flutter/material.dart';
import 'package:task4/profile.dart';

import 'contact_container.dart';

import 'mail_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> bodyWidgets = [
    Center(
      child: ListView.builder(
          itemCount: contact_container.contacts.length,
          itemBuilder: (context, i) => cont_container(
                index: i,
              )),
    ),
    Center(
      child: ListView.builder(
          itemCount: mail_container.mailcont.length,
          itemBuilder: (context, i) => email_container(
                index: i,
              )),
    ),
    Center(
      child: profile(),
    )
  ];
  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child: Column(children: [
                    Container(
                      height:65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    ListTile(
                      title: Text("James walliam"),
                      subtitle: Text("@jameswalliam123"),
                    )
                  ]),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Categories'),
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Add Item'),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('About Us'),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('share with friend'),
                ),
                ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text('rate and review'),
                ),
                ListTile(
                  leading: Icon(Icons.flag),
                  title: Text('privacy & policy'),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(child: Text("E-mail App")),
            backgroundColor: Colors.teal,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                navBarIndex = index;
              });
            },
            selectedItemColor: Colors.white,
            backgroundColor: Colors.teal,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail),
                label: 'contact',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                label: 'mail',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                label: 'profile',
              ),
            ],
          ),
          body: bodyWidgets[navBarIndex],
        ));
  }
}

class cont_container extends StatelessWidget {
  final int index;

  cont_container({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: contact_container.contacts[index],
    );
  }
}

class email_container extends StatelessWidget {
  final int index;

  email_container({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: mail_container.mailcont[index],
    );
  }
}
