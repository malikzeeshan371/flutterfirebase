// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors, non_constant_identifier_names, unused_element, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('My HomePage'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Calls',
              ),
              Tab(
                icon: Icon(Icons.power_settings_new_sharp),
                text: 'On/Off',
              ),
              Tab(
                icon: Icon(Icons.add_alert),
                text: 'Alert',
              ),
              Tab(
                icon: Icon(Icons.wallet),
                text: 'Grid View',
              )
            ]),
          ),
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.all(8),
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Malik Zeeshan'),
                  accountEmail: Text('malikzeeshan9601@gmail.com'),
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(250),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/pixel.png')),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: Center(
            child: TabBarView(
              children: [
                HomePage(),
                Settings(),
                Calls(),
                OnOff(),
                Alert(),
                GridViewYes()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  void callsFloatingButton() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('Home Page', style: TextStyle(fontSize: 75)),
        ),
        Container(
          child: FloatingActionButton(
            onPressed: callsFloatingButton,
            child: Icon(Icons.call),
          ),
        )
      ],
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 75, fontFamily: 'Arial Black'),
      ),
    );
  }
}

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 120, fontFamily: 'Arial Black'),
            ),
          ),
          Container(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 120, fontFamily: 'Arial Black'),
            ),
          ),
          Container(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 120, fontFamily: 'Arial Black'),
            ),
          ),
          Container(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 120, fontFamily: 'Arial Black'),
            ),
          ),
          Container(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 120, fontFamily: 'Arial Black'),
            ),
          ),
          Container(
            child: Text(
              'Calls',
              style: TextStyle(fontSize: 120, fontFamily: 'Arial Black'),
            ),
          ),
          Container(
            child: Image.asset('images/pendrive.png'),
          )
        ],
      ),
    );
  }
}

class OnOff extends StatelessWidget {
  const OnOff({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'On/Off',
        style: TextStyle(fontSize: 75, fontFamily: 'Arial Black'),
      ),
    );
  }
}

class Alert extends StatelessWidget {
  //const Alert({super.key});

  AlertDialogWidget(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Security Issues'),
            content: Text('This is the details'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Press this button'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Testing')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AlertDialogWidget(context);
          },
          child: Text('Alert'),
        ),
      ),
    );
  }
}

class GridViewYes extends StatelessWidget {
  const GridViewYes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      padding: EdgeInsets.all(50),
      crossAxisSpacing: 30,
      mainAxisSpacing: 50,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.blue,
        ),
        Container(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/images/floppy.png'),
            color: Color.fromARGB(255, 60, 58, 61)),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset('assets/images/laptop.png'),
          color: Colors.black12,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset('assets/images/pendrive.png'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello'),
          color: Colors.amber,
        ),
      ],
    ));
  }
}
