import 'package:flutter/material.dart';
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
        leading: const BackButton(
          color: Colors.black,
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
}
