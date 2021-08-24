import 'package:flutter/material.dart';

import '../createlistpage.dart';


class MainPage extends StatefulWidget {
  var descriptionController = TextEditingController();
  var noteTypeController = TextEditingController();
  var authorReaction = TextEditingController();
  var privacyController = TextEditingController();

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var descriptionController = TextEditingController();
  var noteTypeController = TextEditingController();
  var authorReactionController = TextEditingController();
  var privacyController = TextEditingController();
  bool inVisible = true;
  bool isNotVisible = false;

  var http;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Visibility(
                  visible: inVisible,
                  child: TextButton(onPressed: () {
                    setState(() {
                      isNotVisible = !isNotVisible;
                    });
                    print('Private Note Button');
                  },
                    child: Text('Private Note', style: TextStyle(
                        color: const Color.fromRGBO(255, 191, 0, 1)),),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(111, 24, 157, 1),
                    ),
                  ),
                ),
                Visibility(
                  visible: isNotVisible,
                  child: TextButton(onPressed: () {
                    inVisible = inVisible;
                    print('Create Note Button');
                  },
                    child: Text('Create a Note', style: TextStyle(
                        color: const Color.fromRGBO(111, 24, 157, 1)),),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 191, 0, 1),
                    ),
                  ),
                ),
                Visibility(
                  visible: isNotVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (text){
                        print("Text $text");
                      },
                      controller: descriptionController,
                      minLines: 2,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: 'Enter your message here',
                          hintStyle: TextStyle(
                            color: const Color.fromRGBO(111, 24, 157, 1),
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )),
                    ),
                  ),
                ),
                Visibility(
                  visible: isNotVisible,
                  child: TextButton(onPressed: () {
                    postData();
                  },
                    child: Text('Add', style: TextStyle(
                        color: const Color.fromRGBO(111, 24, 157, 1)),),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 191, 0, 1),
                    ),
                  ),
                ),
                TextButton(onPressed: () {
                  print('Public Note Button');
                },
                  child: Text('Public Note', style: TextStyle(
                      color: const Color.fromRGBO(111, 24, 157, 1)),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 191, 0, 1),
                  ),
                ),
                TextButton(onPressed: () {
                  print('Memories Button');
                },
                  child: Text('Memories', style: TextStyle(
                      color: const Color.fromRGBO(255, 191, 0, 1)),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(111, 24, 157, 1),
                  ),
                ),
                TextButton(onPressed: () {
                  print('Fodings Button');
                },
                  child: Text('Fodings', style: TextStyle(
                      color: const Color.fromRGBO(111, 24, 157, 1)),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 191, 0, 1),
                  ),
                ),
                TextButton(onPressed: () {
                  print('Activites Button');
                },
                  child: Text('Activites', style: TextStyle(
                      color: const Color.fromRGBO(255, 191, 0, 1)),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(111, 24, 157, 1),
                  ),
                ),
                TextButton(onPressed: () {
                  print('Advertisments Button');
                },
                  child: Text('Advertisments', style: TextStyle(
                      color: const Color.fromRGBO(111, 24, 157, 1)),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 191, 0, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // create funciton to call check through post request
  Future<void> postData() async {
    if (descriptionController.text.isNotEmpty) {
      var response = await http.post(Uri.parse(
          "https://zen-api-1010.azure-api.net/notes/v1/create"),
          body: ({
            'description': descriptionController.text,
            'noteType':noteTypeController.text,
            'authorReaction':authorReactionController.text,
            'privacy':privacyController.text
          }));
      if (response.statusCode == 200){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
      }else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Invaild, Enter Message")));
      }
    }
  }
}
