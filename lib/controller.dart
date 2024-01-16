import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class controller extends GetxController
{
    RxList<SongModel> song_list = RxList();

    static AudioPlayer player = AudioPlayer();
    static OnAudioQuery _audioQuery = OnAudioQuery();
    RxInt cur_ind=0.obs;

    get_song()
    async {
        song_list.value =await _audioQuery.querySongs();
        return song_list;
    }

}