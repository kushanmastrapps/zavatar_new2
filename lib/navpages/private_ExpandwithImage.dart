import 'dart:ui';

import 'package:flutter/material.dart';

class PrivateExpandWithImage extends StatefulWidget {

  @override
  _PrivateExpandWithImageState createState() => _PrivateExpandWithImageState();
}

class _PrivateExpandWithImageState extends State<PrivateExpandWithImage> {
  bool inVisible = true;
  bool isNotVisible = false;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Private Note Auto Expand with Image',
      style: TextStyle(
        fontSize: 14,
         ),
         ),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(255,191,0,1),
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: inVisible,
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      isNotVisible = !isNotVisible;
                    });
                  },
                  child: Text('Private a Note Expand with Image', 
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
                          height: 270,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network('https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2017/02/Photoshop-Replace-Background-Featured.jpg'),
                              ListTile(
                                trailing: Icon(Icons.more_horiz),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70'),
                                ),
                                subtitle: Text(
                                  '2 days ago',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                              Text(
                                'This is a public note that auto expands based on the text entered. The background will determine the privacy level of the post.',
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
