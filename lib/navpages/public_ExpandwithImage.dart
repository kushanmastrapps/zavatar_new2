import 'package:flutter/material.dart';

class PublicExpandwithImage extends StatefulWidget {

  @override
  _PublicExpandwithImageState createState() => _PublicExpandwithImageState();
}

class _PublicExpandwithImageState extends State<PublicExpandwithImage> {
  bool inVisible = true;
  bool isNotVisible = false;
  
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Public Note Auto Expand with Image',
      style: TextStyle(
        fontSize: 14,
         ),
      ),
      centerTitle:true,
      backgroundColor:const Color.fromRGBO(111,24,157,1),
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
                  child: Text('Public Note', 
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
                          height: 350,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network('https://wallpapercave.com/wp/wp2704824.jpg'),
                              ListTile(
                                trailing: Icon(Icons.more_horiz),
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/2078265/pexels-photo-2078265.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
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
                                style: TextStyle(fontSize: 10, color: Colors.black87,), textAlign: TextAlign.justify
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