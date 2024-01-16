import 'package:flutter/material.dart';
import 'package:song_music/Albums.dart';
import 'package:song_music/Artists.dart';
import 'package:song_music/playlists.dart';
import 'package:song_music/songs.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                child: Text("Songs", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Artist", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Album", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Playlist", style: TextStyle(color: Colors.black)),
              ),
            ]),
            iconTheme: IconThemeData(color: Colors.black54),
            backgroundColor: Colors.blue.shade200,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ]),
        body: TabBarView(children: [song(), Artists(), albums(), playlist()]),
      ),
    );
  }
}
