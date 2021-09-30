import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double volumen = 1;


  Widget CreateIconButton(IconData icon, Color color, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(icon),
      iconSize:   50,
      color: color,
      onPressed: () {},
    );
  }



    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Player'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CreateIconButton(Icons.skip_previous_sharp, Colors.black,
                                  () {
                                //Aqui va la funcionalidad
                              }),
                          CreateIconButton(
                              Icons.play_circle_outline_outlined, Colors.black, () {
                            //Aqui va la funcionalidad
                          }),
                          CreateIconButton(Icons.skip_next_sharp, Colors.black, () {
                            //Aqui va la funcionalidad
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );
    }



  }


