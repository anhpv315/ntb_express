import 'package:json_annotation/json_annotation.dart';

part 'fee_item.g.dart';

@JsonSerializable()
class FeeItem {
  int? feeId;
  int? feeGroup;
  int? goodsType;
  int? locationGroup;
  double feeByWeight;
  double minWeight;
  double maxWeight;
  double feeBySize;
  double minSize;
  double maxSize;

  FeeItem(
      {required this.feeId,
      required this.feeGroup,
      required this.goodsType,
      required this.locationGroup,
       this.feeByWeight = 0,
       this.minWeight = 0,
       this.maxWeight = 0,
       this.feeBySize = 0,
       this.minSize = 0,
       this.maxSize = 0});

  factory FeeItem.fromJson(Map<String, dynamic> json) =>
      _$FeeItemFromJson(json);

  Map<String, dynamic> toJson() => _$FeeItemToJson(this);
}
