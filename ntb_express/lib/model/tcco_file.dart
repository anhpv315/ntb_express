import 'package:json_annotation/json_annotation.dart';

part 'tcco_file.g.dart';

@JsonSerializable()
class TCCOFile {
  String atchFleSeq;
  String fleTP;
  String flePath;
  String fleNm;
  String newFleNm;
  String fleSz;
  String descrpt;
  String insId;
  num? insDt;
  num? uptDt;
  String fleUri;

  TCCOFile(
      {required this.atchFleSeq,
      required this.fleTP,
      required this.flePath,
      required this.fleNm,
      required this.newFleNm,
      required this.fleSz,
      required this.descrpt,
      required this.insId,
      required this.insDt,
      required this.uptDt,
      required this.fleUri});

  factory TCCOFile.fromJson(Map<String, dynamic> json) => _$TCCOFileFromJson(json);

  Map<String, dynamic> toJson() => _$TCCOFileToJson(this);
}
