import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    saveKelas(1);
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
                    saveKelas(2);
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
                    saveKelas(3);
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

  saveKelas(int kelas) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('Classes', kelas);
  }
}
