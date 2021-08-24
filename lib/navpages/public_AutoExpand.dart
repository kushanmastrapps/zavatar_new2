import 'dart:ui';

import 'package:flutter/material.dart';

class PublicAutoExpand extends StatefulWidget {
  @override
  _PublicAutoExpandState createState() => _PublicAutoExpandState();
}

class _PublicAutoExpandState extends State<PublicAutoExpand> {
  bool inVisible = true;
  bool isNotVisible = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Public Note Auto Expand',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(111, 24, 157, 1),
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
                          height: 200,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                trailing: Icon(Icons.more_horiz),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                                ),
                                title: Text('Malin De Silva', style: TextStyle(
                                  fontSize:18,
                                  color: Colors.grey[900]),),
                                subtitle: Text(
                                  '2 days ago | Close Friends',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                              Text(
                                'This is a public note that auto expands based on the text entered. The background will determine the privacy level of the post.',
                                style: TextStyle(fontSize: 10, color: Colors.black87,), textAlign: TextAlign.justify,
                              ),
                              ButtonBar(
                            alignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(onPressed: (){}, 
                              icon: Icon(Icons.thumb_up, color: Colors.grey[600],),
                              label: Text('76', style: TextStyle(color: Colors.grey[600],
                              ),),),
                              TextButton.icon(onPressed: (){}, 
                              icon: Icon(Icons.favorite, color: Colors.grey[600],
                              ), label: Text('3', style: TextStyle(color: Colors.grey[600], ),),),
                              TextButton.icon(onPressed: (){}, 
                              icon: Icon(Icons.comment, color: Colors.grey[600],), label: Text('13', style: TextStyle(color: Colors.grey[600],),),),
                            ],
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
