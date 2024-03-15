import 'package:json_annotation/json_annotation.dart';
import 'package:ntbexpress/model/vietnam_areas/location.dart';

part 'district.g.dart';

@JsonSerializable()
class District implements Location {
  int id;
  String name;
  String location;
  String type;
  @JsonKey(name: 'tinh_id')
  int provinceId;

  District({required this.id, required this.name, required this.location, required this.type, required this.provinceId});

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictToJson(this);
}
