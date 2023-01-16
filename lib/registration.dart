import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  //controller
  TextEditingController nameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    classController.dispose();
    schoolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                      flex: 4,
                      child: Text('Nama'),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Flexible(
                      flex: 2,
                      child: nameText(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                      flex: 4,
                      child: Text('Kelas'),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Flexible(
                      flex: 2,
                      child: classText(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                      flex: 4,
                      child: Text('Sekolah'),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Flexible(
                      flex: 2,
                      child: schoolText(),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {

                    // }
                    Navigator.pushNamed(context, '/logoscreen');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff006699)),
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
      ),
    );
  }

  showAlertDialog() {
    AlertDialog alert = AlertDialog(
      title: const Text('Error'),
      content: const Text('Mohon isi semua isian yang diberikan.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ya'),
        ),
      ],
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return alert;
      },
    );
  }

  TextFormField schoolText() => TextFormField(
        controller: schoolController,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return showAlertDialog();
        //   } else {
        //     return null;
        //   }
        // },
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: 'Masukkan nama sekolah anda',
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            )),
      );

  TextFormField classText() => TextFormField(
        controller: classController,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return showAlertDialog();
        //   } else {
        //     return null;
        //   }
        // },
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            labelText: 'Masukkan kelas anda',
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            )),
      );

  TextFormField nameText() => TextFormField(
        controller: nameController,
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return showAlertDialog();
        //   } else {
        //     return null;
        //   }
        // },
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            labelText: 'Masukkan nama anda',
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            )),
      );
}
