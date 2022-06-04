import 'package:flutter/material.dart';
import 'package:mtnapp/other_screen.dart';
import 'package:mtnapp/gallery_screen.dart';
import 'package:mtnapp/user_profile_screen.dart';

void main() => runApp(const DashboardScreen());

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static const String _title = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: const MyStatefulWidget(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OtherScreen()));
            },
            label: const Text('Other'),
            backgroundColor: Color.fromARGB(255, 37, 6, 16),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Hi Welcome to your Dashboard',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                height: 200,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: ElevatedButton(
                  child: const Text('Gallery'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GalleryScreen()));
                  },
                )),
            Container(
                height: 200,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ElevatedButton(
                  child: const Text('Edit'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EditScreen()));
                  },
                )),
          ],
        ));
  }
}
