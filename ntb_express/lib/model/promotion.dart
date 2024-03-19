import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'promotion.g.dart';

@JsonSerializable()
class Promotion {
  int promotionId;
  String promotionName;
  num? startDate;
  num? endDate;
  int? goodsType;
  int? promotionType;
  double? discountValue;
  double? maxDiscountValue;
  int? countOrder;
  double? minSize;
  double? maxSize;
  double? minWeight;
  double? maxWeight;
  double? minFee;
  double? maxFee;
  String compareValue;
  int? compareType;
  int? maxUse;
  double? feeBySizeZ1;
  double? feeByWeightZ1;
  double? feeBySizeZ2;
  double? feeByWeightZ2;
  double? feeBySizeZ3;
  double? feeByWeightZ3;
  String description;
  bool valid;

  Promotion(
      {this.promotionId = 0,
      this.promotionName = '',
      this.startDate = 0,
      this.endDate = 0,
      this.goodsType = 0,
      this.promotionType = 0,
      double? this.discountValue,
      this.maxDiscountValue = 0,
      this.countOrder = 0,
      this.minSize = 0,
      this.maxSize = 0,
      this.minWeight = 0,
      this.maxWeight = 0,
      this.minFee = 0,
      this.maxFee = 0,
      this.compareValue = '',
      this.compareType = 0,
      this.maxUse = 0,
      this.feeBySizeZ1 = 0,
      this.feeByWeightZ1 = 0,
      this.feeBySizeZ2 = 0,
      double? this.feeByWeightZ2,
      this.feeBySizeZ3 = 0,
      this.feeByWeightZ3 = 0,
      this.description = '',
      this.valid = true});

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);

  static Promotion clone(Promotion other) {
    final String jsonString = json.encode(other);
    final jsonResponse = json.decode(jsonString);

    return Promotion.fromJson(jsonResponse as Map<String, dynamic>);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Promotion &&
          runtimeType == other.runtimeType &&
          promotionId == other.promotionId &&
          promotionName == other.promotionName &&
          startDate == other.startDate &&
          endDate == other.endDate &&
          goodsType == other.goodsType &&
          promotionType == other.promotionType &&
          discountValue == other.discountValue &&
          countOrder == other.countOrder &&
          minSize == other.minSize &&
          maxSize == other.maxSize &&
          minWeight == other.minWeight &&
          maxWeight == other.maxWeight &&
          minFee == other.minFee &&
          maxFee == other.maxFee &&
          compareValue == other.compareValue &&
          compareType == other.compareType &&
          maxUse == other.maxUse &&
          feeBySizeZ1 == other.feeBySizeZ1 &&
          feeByWeightZ1 == other.feeByWeightZ1 &&
          feeBySizeZ2 == other.feeBySizeZ2 &&
          feeByWeightZ2 == other.feeByWeightZ2 &&
          feeBySizeZ3 == other.feeBySizeZ3 &&
          feeByWeightZ3 == other.feeByWeightZ3 &&
          description == other.description;

  @override
  int get hashCode =>
      promotionId.hashCode ^
      promotionName.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      goodsType.hashCode ^
      promotionType.hashCode ^
      discountValue.hashCode ^
      countOrder.hashCode ^
      minSize.hashCode ^
      maxSize.hashCode ^
      minWeight.hashCode ^
      maxWeight.hashCode ^
      minFee.hashCode ^
      maxFee.hashCode ^
      compareValue.hashCode ^
      compareType.hashCode ^
      maxUse.hashCode ^
      feeBySizeZ1.hashCode ^
      feeByWeightZ1.hashCode ^
      feeBySizeZ2.hashCode ^
      feeByWeightZ2.hashCode ^
      feeBySizeZ3.hashCode ^
      feeByWeightZ3.hashCode ^
      description.hashCode;

  @override
  String toString() {
    return 'Promotion{promotionId: $promotionId, promotionName: $promotionName, startDate: $startDate, endDate: $endDate, goodsType: $goodsType, promotionType: $promotionType, discountValue: $discountValue, maxDiscountValue: $maxDiscountValue, countOrder: $countOrder, minSize: $minSize, maxSize: $maxSize, minWeight: $minWeight, maxWeight: $maxWeight, minFee: $minFee, maxFee: $maxFee, compareValue: $compareValue, compareType: $compareType, maxUse: $maxUse, feeBySizeZ1: $feeBySizeZ1, feeByWeightZ1: $feeByWeightZ1, feeBySizeZ2: $feeBySizeZ2, feeByWeightZ2: $feeByWeightZ2, feeBySizeZ3: $feeBySizeZ3, feeByWeightZ3: $feeByWeightZ3, description: $description, valid: $valid}';
  }
}
