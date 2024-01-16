import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:song_music/main.dart';

void main() {
  runApp(MaterialApp(
    home: splesh(),
    debugShowCheckedModeBanner: false,
  ));
}

class splesh extends StatefulWidget {
  const splesh({super.key});

  @override
  State<splesh> createState() => _spleshState();
}

class _spleshState extends State<splesh> {
  get()
  async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
          Permission.storage,
      ].request();
    }
  }
  get_second()
  {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Home();
      },));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_second();
    get();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Icon(Icons.music_note_outlined,color: Colors.black54,size: 150,),
        Text("MUSIC PLAYER",style: TextStyle(color: Colors.black87,fontSize: 30,),)
      ]),),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomLeft,
              begin: Alignment.topRight,
              colors: [Colors.blue,Colors.white, Colors.blue])),
    ));
  }
}
