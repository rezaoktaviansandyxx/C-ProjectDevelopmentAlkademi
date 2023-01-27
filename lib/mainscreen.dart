import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var passData = 0;
    var totData = 0;
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
                    totData = passData + 1;
                    Navigator.pushNamed(context, '/registration',
                        arguments: totData);
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
                    totData = passData + 2;
                    Navigator.pushNamed(context, '/registration',
                        arguments: totData);
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
                    totData = passData + 3;
                    Navigator.pushNamed(context, '/registration',
                        arguments: totData);
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
