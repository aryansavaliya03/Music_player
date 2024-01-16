import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:song_music/controller.dart';
import 'package:song_music/playlists.dart';

class song extends StatelessWidget {
  const song({super.key});

  @override
  Widget build(BuildContext context) {
    controller c = Get.put(controller());
    return Scaffold(backgroundColor: Colors.blue.shade200,
      body: FutureBuilder(future: c.get_song(), builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.done)
          {
            List<SongModel> l=snapshot.data as List<SongModel>;
            return ListView.builder(itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          c.cur_ind.value=index;
                          controller.player.play(DeviceFileSource(c.song_list.value[c.cur_ind.value].data));
                        },
                        title: Text("${l[index].title}",maxLines: 1),
                      ),
                    );
            },);
          }
        else
          {
            return Center(child: CircularProgressIndicator(color: Colors.blue,));
          }
      },)
    );
  }
}
