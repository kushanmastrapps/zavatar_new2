import 'dart:ui';

import 'package:flutter/material.dart';

class NavPrivatePage extends StatefulWidget {
  @override
  _NavPrivatePageState createState() => _NavPrivatePageState();
}

class _NavPrivatePageState extends State<NavPrivatePage> {
  bool inVisible = true;
  bool isNotVisible = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Private Note Auto Expand',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 191, 0, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Visibility(
                    visible: inVisible,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isNotVisible = !isNotVisible;
                        });
                      },
                      child: Text(
                        'Create Private Note',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isNotVisible,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (text) {},
                        minLines: 2,
                        maxLines: 10,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          hintText: 'Enter your message here',
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isNotVisible,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[600],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isNotVisible,
                    child: Center(
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Colors.grey[300],
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 130,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                trailing: Icon(Icons.more_horiz),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                ),
                                subtitle: Text(
                                  '2 days ago',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                              Text(
                                'This is a private note that auto expands based on the text entered. The background will determine the privacy level of the post',
                                style: TextStyle(fontSize: 10, color: Colors.black87,), textAlign: TextAlign.justify
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
