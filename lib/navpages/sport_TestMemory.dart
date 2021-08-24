import 'package:flutter/material.dart';

class SportTestMemory extends StatefulWidget {

  @override
  _SportTestMemoryState createState() => _SportTestMemoryState();
}

class _SportTestMemoryState extends State<SportTestMemory> {
  bool inVisible = true;
  bool isNotVisible = false;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Sport Test Memory',
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
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Visibility(
                  visible: inVisible,
                  child: TextButton(onPressed: () {
                    setState(() {
                      isNotVisible = !isNotVisible;
                    });
                    },
                      child: Text('Create a Sport Memory Note', style: TextStyle(
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
                          height: 150,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('SPORTS', style: TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w700),),
                                Expanded(child: Wrap(
                                  direction: Axis.horizontal,
                                  runSpacing: 50,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  spacing: 20,
                                ),),
                                ListTile(
                                  trailing: Icon(Icons.more_horiz),
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://www.leisureopportunities.co.uk/images/995586_746594.jpg'),
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
                                  'This is a test memory that will be used as example for a memory without image. Every memory can be set into a particular category which shown on top',
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