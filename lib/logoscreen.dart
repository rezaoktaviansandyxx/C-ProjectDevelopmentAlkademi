import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';
import 'package:quiz_app/models/shared_prefs_model.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  //Variable
  SharedPrefs sharedPrefs = SharedPrefs();
  Answer answerLoad = Answer();
  @override
  void initState() {
    loadSharedPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
          onPressed: () async {
            sharedPrefs.remove('nama');
            sharedPrefs.remove('kelas');
            sharedPrefs.remove('sekolah');
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/unpad.png')),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/ristekdikti.png')),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/assesment');
                    },
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
          ],
        ),
      ),
    );
  }

  loadSharedPrefs() async {
    try {
      Answer buttonId = Answer.fromJson(await sharedPrefs.read('buttonId'));
      Answer answer = Answer.fromJson(await sharedPrefs.read('nama'));
      Answer answer2 = Answer.fromJson(await sharedPrefs.read('kelas'));
      Answer answer3 = Answer.fromJson(await sharedPrefs.read('sekolah'));
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${buttonId.buttonId}\n'
            '${answer.nama}\n'
            '${answer2.kelas}\n'
            '${answer3.sekolah}'),
        duration: const Duration(milliseconds: 500),
      ));
      setState(() {
        answerLoad = buttonId;
        answerLoad = answer;
        answerLoad = answer2;
        answerLoad = answer3;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Nothing Found!'),
        duration: Duration(milliseconds: 500),
      ));
    }
  }
}
