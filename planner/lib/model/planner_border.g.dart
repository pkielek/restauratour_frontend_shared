// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planner_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlannerBorderImpl _$$PlannerBorderImplFromJson(Map<String, dynamic> json) =>
    _$PlannerBorderImpl(
      left: (json['left'] as num).toDouble(),
      top: (json['top'] as num).toDouble(),
      isHorizontal: json['is_horizontal'] as bool,
      length: (json['length'] as num).toDouble(),
      type: $enumDecode(_$PlannerBorderTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$PlannerBorderImplToJson(_$PlannerBorderImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'is_horizontal': instance.isHorizontal,
      'length': instance.length,
      'type': _$PlannerBorderTypeEnumMap[instance.type]!,
    };

const _$PlannerBorderTypeEnumMap = {
  PlannerBorderType.wall: 'Ściana',
  PlannerBorderType.window: 'Okno',
  PlannerBorderType.door: 'Drzwi',
};
