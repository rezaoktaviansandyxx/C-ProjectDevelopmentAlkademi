import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';
import 'package:quiz_app/models/shared_prefs_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SharedPrefs sharedPrefs = SharedPrefs();
    Answer answer = Answer();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/funmath.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    answer.buttonId = 1;
                    sharedPrefs.save('buttonId', answer);
                    Navigator.pushNamed(context, '/registration');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff006699),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                    child: Text('Kelas 2'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    answer.buttonId = 2;
                    sharedPrefs.save('buttonId', answer);
                    Navigator.pushNamed(context, '/registration');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff006699),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                    child: Text('Kelas 4'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    answer.buttonId = 3;
                    sharedPrefs.save('buttonId', answer);
                    Navigator.pushNamed(context, '/registration');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff006699),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                    child: Text('Kelas 6'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
