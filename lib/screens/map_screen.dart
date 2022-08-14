import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Search',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: false,
            automaticallyImplyLeading: false),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xFFe9eaec),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        cursorColor: const Color(0xFF000000),
                        controller: _searchController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: const Color(0xFF000000).withOpacity(0.5),
                            ),
                            hintText: "Search",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Image.network(
                            'https://www.tabikobo.com/special/zekkei/images/main.jpg')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(30,8,30,8),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 50,
                        child: Center(
                            child: Text('example documents',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
