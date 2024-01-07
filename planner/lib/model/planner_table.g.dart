// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planner_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlannerTableImpl _$$PlannerTableImplFromJson(Map<String, dynamic> json) =>
    _$PlannerTableImpl(
      id: json['real_id'] as String,
      left: (json['left'] as num).toDouble(),
      top: (json['top'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      seatsTop: json['seats_top'] as int? ?? 0,
      seatsLeft: json['seats_left'] as int? ?? 0,
      seatsRight: json['seats_right'] as int? ?? 0,
      seatsBottom: json['seats_bottom'] as int? ?? 0,
    );

Map<String, dynamic> _$$PlannerTableImplToJson(_$PlannerTableImpl instance) =>
    <String, dynamic>{
      'real_id': instance.id,
      'left': instance.left,
      'top': instance.top,
      'width': instance.width,
      'height': instance.height,
      'seats_top': instance.seatsTop,
      'seats_left': instance.seatsLeft,
      'seats_right': instance.seatsRight,
      'seats_bottom': instance.seatsBottom,
    };
