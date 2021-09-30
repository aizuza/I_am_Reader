import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  File? _image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    //this line allow us to acces to the camera
    final image = await imagePicker.getImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Column(children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the second screen when tapped.
              Navigator.pushNamed(context, '/i_archive');
            },
            child: const Text('Inside Archive'),
          ),
        ),

        _image == null ? Text('') : Image.file(_image!)



      ]),
      floatingActionButton: PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text(
              "Camera",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),

            ),
            onTap: (){
              getImage();
              print('eoooo');
            },
          ),
          PopupMenuItem(
            value: 2,
            child: Text(
              "Add file",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Text(
              "Flutter Tutorial",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ],
          icon: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: ShapeDecoration(
                color: Colors.blue,
                shape: StadiumBorder(
                  side: BorderSide(color: Colors.white, width: 2),

                )
            ),
            child: Icon(Icons.add, color: Colors.white),
          )
        // offset: Offset()
      ),
    );

    // floatingActionButton: FloatingActionButton(
    //
    //   onPressed: (){
    //     Navigator.pushNamed(context, '/player');
    //   },
    // ),
  }

  //@override
  //void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //super.debugFillProperties(properties);
//properties.add(DiagnosticsProperty('future', future));
//}
}
