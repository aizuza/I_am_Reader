import 'package:flutter/material.dart';
class Folder extends StatefulWidget {
  const Folder({Key? key}) : super(key: key);

  @override
  _FolderState createState() => _FolderState();
}

class _FolderState extends State<Folder> {
  TextEditingController _textFieldController = TextEditingController();
  late String folderName;
  late String codeDialog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Folder'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Archive Screen'),
        ),
      ),
      // crear boton; lleva funcionalidad hay que dejarlo ultimo
      floatingActionButton: FloatingActionButton(
        child: const Text('Add Folder'),
        onPressed: (){
          _displayTextInputDialog(context).then((value) => print('blabla'));
        },
      ),

    );

  }


  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Folder´s name'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  folderName = value;
                });
              },
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    codeDialog = folderName;
                    Navigator.pop(context);
                  });
                },
              ),

            ],
          );
        });
  }
}




