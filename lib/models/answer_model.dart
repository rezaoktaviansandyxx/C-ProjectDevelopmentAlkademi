class Answer {
  int? id;
  int? buttonId;
  String? nama;
  String? kelas;
  String? sekolah;
  List<Jawaban>? jawaban;
  int? waktu;

  Answer(
      {this.id,
      this.buttonId,
      this.nama,
      this.kelas,
      this.sekolah,
      this.jawaban,
      this.waktu});

  Answer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    buttonId = json['buttonId'];
    nama = json['nama'];
    kelas = json['kelas'];
    sekolah = json['sekolah'];
    if (json['jawaban'] != null) {
      jawaban = <Jawaban>[];
      json['jawaban'].forEach((v) {
        jawaban!.add(Jawaban.fromJson(v));
      });
    }
    waktu = json['waktu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['buttonId'] = buttonId;
    data['nama'] = nama;
    data['kelas'] = kelas;
    data['sekolah'] = sekolah;
    if (jawaban != null) {
      data['jawaban'] = jawaban!.map((v) => v.toJson()).toList();
    }
    data['waktu'] = waktu;
    return data;
  }
}

class Jawaban {
  int? questionId;
  String? answer;
  int? waktu;

  Jawaban({this.questionId, this.answer, this.waktu});

  Jawaban.fromJson(Map<String, dynamic> json) {
    questionId = json['questionId'];
    answer = json['answer'];
    waktu = json['waktu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['questionId'] = questionId;
    data['answer'] = answer;
    data['waktu'] = waktu;
    return data;
  }
}