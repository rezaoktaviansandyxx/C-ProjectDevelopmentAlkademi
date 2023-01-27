import 'package:flutter/src/widgets/visibility.dart';

class Intro {
  bool? status;
  String? message;
  Data? data;

  Intro({this.status, this.message, this.data});

  Intro.fromJson(Map<String, dynamic> json) {
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
  String? sId;
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
  int? iV;

  Data(
      {this.sId,
      this.owner,
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
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
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
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
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
    data['__v'] = iV;
    return data;
  }
}

class Questions {
  String? question;
  String? type;
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
  String? sId;

  Choices({this.image, this.value, this.sId});

  Choices.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    value = json['value'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['value'] = value;
    data['_id'] = sId;
    return data;
  }

  map(Visibility Function(dynamic choices1) param0) {}
}
