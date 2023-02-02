class SoalC {
  bool? status;
  String? message;
  Data? data;

  SoalC({this.status, this.message, this.data});

  SoalC.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? owner;
  int? userId;
  String? title;
  String? description;
  bool? loginRequired;
  List<Questions>? questions;
  String? cover;
  bool? scoring;
  bool? release;
  int? timer;
  String? formType;
  String? createdAt;
  String? updatedAt;
  String? sId;
  int? iV;

  Data(
      {this.owner,
      this.userId,
      this.title,
      this.description,
      this.loginRequired,
      this.questions,
      this.cover,
      this.scoring,
      this.release,
      this.timer,
      this.formType,
      this.createdAt,
      this.updatedAt,
      this.sId,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    owner = json['owner'];
    userId = json['userId'];
    title = json['title'];
    description = json['description'];
    loginRequired = json['loginRequired'];
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(Questions.fromJson(v));
      });
    }
    cover = json['cover'];
    scoring = json['scoring'];
    release = json['release'];
    timer = json['timer'];
    formType = json['formType'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['owner'] = owner;
    data['userId'] = userId;
    data['title'] = title;
    data['description'] = description;
    data['loginRequired'] = loginRequired;
    if (questions != null) {
      data['questions'] = questions!.map((v) => v.toJson()).toList();
    }
    data['cover'] = cover;
    data['scoring'] = scoring;
    data['release'] = release;
    data['timer'] = timer;
    data['formType'] = formType;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['_id'] = sId;
    data['__v'] = iV;
    return data;
  }
}

class Questions {
  String? question;
  String? type;
  String? correct;
  String? file;
  String? image;
  String? video;
  String? audio;
  List<Choices>? choices;
  String? fileExtension;
  String? defaultValue;
  bool? required;
  String? sId;

  Questions(
      {this.question,
      this.type,
      this.correct,
      this.file,
      this.image,
      this.video,
      this.audio,
      this.choices,
      this.fileExtension,
      this.defaultValue,
      this.required,
      this.sId});

  Questions.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    type = json['type'];
    correct = json['correct'];
    file = json['file'];
    image = json['image'];
    video = json['video'];
    audio = json['audio'];
    if (json['choices'] != null) {
      choices = <Choices>[];
      json['choices'].forEach((v) {
        choices!.add(Choices.fromJson(v));
      });
    }
    fileExtension = json['fileExtension'];
    defaultValue = json['defaultValue'];
    required = json['required'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question'] = question;
    data['type'] = type;
    data['correct'] = correct;
    data['file'] = file;
    data['image'] = image;
    data['video'] = video;
    data['audio'] = audio;
    if (choices != null) {
      data['choices'] = choices!.map((v) => v.toJson()).toList();
    }
    data['fileExtension'] = fileExtension;
    data['defaultValue'] = defaultValue;
    data['required'] = required;
    data['_id'] = sId;
    return data;
  }
}

class Choices {
  String? image;
  String? value;
  bool? correct;
  String? sId;

  Choices({this.image, this.value, this.correct, this.sId});

  Choices.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    value = json['value'];
    correct = json['correct'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['value'] = value;
    data['correct'] = correct;
    data['_id'] = sId;
    return data;
  }
}
