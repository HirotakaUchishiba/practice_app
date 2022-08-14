import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Profile',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: false,
            automaticallyImplyLeading: false),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(200)),
                      child: Image.network(
                          'https://images.wantedly.com/i/ta5Zgnv')),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('exampleUser',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('nice to meet you:)'),
                    ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
