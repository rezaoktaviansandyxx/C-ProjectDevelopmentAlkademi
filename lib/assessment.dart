import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Assessment extends StatefulWidget {
  const Assessment({super.key});

  @override
  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  final _assetsAudioPlayer = AssetsAudioPlayer();
  bool isEnable = false;
  @override
  void initState() {
    openPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(left: 25, top: 60),
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Asesmen Matematika',
                  style: TextStyle(fontSize: 23),
                ),
                subtitle: Text(
                  'Selamat datang di dunia matematika, hari ini kamu memiliki misi untuk menjawab pertanyaan-pertanyaan seputar dunia matematika.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff006699),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: isEnable
                    ? () {
                        Navigator.pushNamed(context, '/tutorial');
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff006699),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: Text('Next'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  openPlayer() async {
    await _assetsAudioPlayer.open(
      Audio('assets/audios/assesment.m4a'),
      autoStart: true,
    );
    _assetsAudioPlayer.playlistAudioFinished.listen((event) {
      setState(() {
        isEnable = true;
      });
    });
  }
}
