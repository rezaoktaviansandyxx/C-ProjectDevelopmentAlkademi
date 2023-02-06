import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';
import 'package:quiz_app/models/shared_prefs_model.dart';
import 'package:quiz_app/widget/custom_text_form_field.dart';

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
  //Variable
  SharedPrefs sharedPrefs = SharedPrefs();
  Answer answerLoad = Answer();
  Answer answerSave = Answer();

  @override
  void initState() {
    loadSharedPrefs();
    super.initState();
  }

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            sharedPrefs.remove('buttonId');
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
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
                        flex: 4,
                        child: CustomTextFormField(
                          controller: nameController,
                          txtLable: 'Masukkan nama anda',
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.name,
                          onChanged: (value) {
                            answerSave.nama = value;
                          },
                        ),
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
                        flex: 4,
                        child: CustomTextFormField(
                          controller: classController,
                          txtLable: 'Masukkan kelas anda',
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                          onChanged: (value) {
                            answerSave.kelas = value;
                          },
                        ),
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
                        flex: 4,
                        child: CustomTextFormField(
                          controller: schoolController,
                          txtLable: 'Masukkan nama sekolah anda',
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.text,
                          onChanged: (value) {
                            answerSave.sekolah = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      if (isAllFilled()) {
                        nameController.text;
                        classController.text;
                        schoolController.text;
                        saveToSF();
                        Navigator.pushNamed(context, '/logoscreen');
                        nameController.clear();
                        classController.clear();
                        schoolController.clear();
                      } else {
                        showAlertDialog();
                      }
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

  isAllFilled() {
    return nameController.text != '' &&
        classController.text != '' &&
        schoolController.text != '' &&
        nameController.text != null &&
        classController.text != null &&
        schoolController.text != null;
  }

  loadSharedPrefs() async {
    try {
      Answer answer = Answer.fromJson(await sharedPrefs.read('buttonId'));
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${answer.buttonId}'),
        duration: const Duration(milliseconds: 5000),
      ));
      setState(() {
        answerLoad = answer;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Nothing Found!'),
        duration: Duration(milliseconds: 500),
      ));
    }
  }

  saveToSF() {
    sharedPrefs.save('nama', answerSave);
    sharedPrefs.save('kelas', answerSave);
    sharedPrefs.save('sekolah', answerSave);
  }
}
