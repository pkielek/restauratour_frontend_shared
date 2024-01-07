// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planner_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlannerTable _$PlannerTableFromJson(Map<String, dynamic> json) {
  return _PlannerTable.fromJson(json);
}

/// @nodoc
mixin _$PlannerTable {
  @JsonKey(name: "real_id")
  String get id => throw _privateConstructorUsedError;
  double get left => throw _privateConstructorUsedError;
  double get top => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  int get seatsTop => throw _privateConstructorUsedError;
  int get seatsLeft => throw _privateConstructorUsedError;
  int get seatsRight => throw _privateConstructorUsedError;
  int get seatsBottom => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get isDragged => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Rect get newRectOffset => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  CurrentEditAction get currentAction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlannerTableCopyWith<PlannerTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerTableCopyWith<$Res> {
  factory $PlannerTableCopyWith(
          PlannerTable value, $Res Function(PlannerTable) then) =
      _$PlannerTableCopyWithImpl<$Res, PlannerTable>;
  @useResult
  $Res call(
      {@JsonKey(name: "real_id") String id,
      double left,
      double top,
      double width,
      double height,
      int seatsTop,
      int seatsLeft,
      int seatsRight,
      int seatsBottom,
      @JsonKey(ignore: true) bool isDragged,
      @JsonKey(ignore: true) Rect newRectOffset,
      @JsonKey(ignore: true) CurrentEditAction currentAction});
}

/// @nodoc
class _$PlannerTableCopyWithImpl<$Res, $Val extends PlannerTable>
    implements $PlannerTableCopyWith<$Res> {
  _$PlannerTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? left = null,
    Object? top = null,
    Object? width = null,
    Object? height = null,
    Object? seatsTop = null,
    Object? seatsLeft = null,
    Object? seatsRight = null,
    Object? seatsBottom = null,
    Object? isDragged = null,
    Object? newRectOffset = null,
    Object? currentAction = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      seatsTop: null == seatsTop
          ? _value.seatsTop
          : seatsTop // ignore: cast_nullable_to_non_nullable
              as int,
      seatsLeft: null == seatsLeft
          ? _value.seatsLeft
          : seatsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      seatsRight: null == seatsRight
          ? _value.seatsRight
          : seatsRight // ignore: cast_nullable_to_non_nullable
              as int,
      seatsBottom: null == seatsBottom
          ? _value.seatsBottom
          : seatsBottom // ignore: cast_nullable_to_non_nullable
              as int,
      isDragged: null == isDragged
          ? _value.isDragged
          : isDragged // ignore: cast_nullable_to_non_nullable
              as bool,
      newRectOffset: null == newRectOffset
          ? _value.newRectOffset
          : newRectOffset // ignore: cast_nullable_to_non_nullable
              as Rect,
      currentAction: null == currentAction
          ? _value.currentAction
          : currentAction // ignore: cast_nullable_to_non_nullable
              as CurrentEditAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlannerTableImplCopyWith<$Res>
    implements $PlannerTableCopyWith<$Res> {
  factory _$$PlannerTableImplCopyWith(
          _$PlannerTableImpl value, $Res Function(_$PlannerTableImpl) then) =
      __$$PlannerTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "real_id") String id,
      double left,
      double top,
      double width,
      double height,
      int seatsTop,
      int seatsLeft,
      int seatsRight,
      int seatsBottom,
      @JsonKey(ignore: true) bool isDragged,
      @JsonKey(ignore: true) Rect newRectOffset,
      @JsonKey(ignore: true) CurrentEditAction currentAction});
}

/// @nodoc
class __$$PlannerTableImplCopyWithImpl<$Res>
    extends _$PlannerTableCopyWithImpl<$Res, _$PlannerTableImpl>
    implements _$$PlannerTableImplCopyWith<$Res> {
  __$$PlannerTableImplCopyWithImpl(
      _$PlannerTableImpl _value, $Res Function(_$PlannerTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? left = null,
    Object? top = null,
    Object? width = null,
    Object? height = null,
    Object? seatsTop = null,
    Object? seatsLeft = null,
    Object? seatsRight = null,
    Object? seatsBottom = null,
    Object? isDragged = null,
    Object? newRectOffset = null,
    Object? currentAction = null,
  }) {
    return _then(_$PlannerTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      seatsTop: null == seatsTop
          ? _value.seatsTop
          : seatsTop // ignore: cast_nullable_to_non_nullable
              as int,
      seatsLeft: null == seatsLeft
          ? _value.seatsLeft
          : seatsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      seatsRight: null == seatsRight
          ? _value.seatsRight
          : seatsRight // ignore: cast_nullable_to_non_nullable
              as int,
      seatsBottom: null == seatsBottom
          ? _value.seatsBottom
          : seatsBottom // ignore: cast_nullable_to_non_nullable
              as int,
      isDragged: null == isDragged
          ? _value.isDragged
          : isDragged // ignore: cast_nullable_to_non_nullable
              as bool,
      newRectOffset: null == newRectOffset
          ? _value.newRectOffset
          : newRectOffset // ignore: cast_nullable_to_non_nullable
              as Rect,
      currentAction: null == currentAction
          ? _value.currentAction
          : currentAction // ignore: cast_nullable_to_non_nullable
              as CurrentEditAction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlannerTableImpl extends _PlannerTable {
  _$PlannerTableImpl(
      {@JsonKey(name: "real_id") required this.id,
      required this.left,
      required this.top,
      required this.width,
      required this.height,
      this.seatsTop = 0,
      this.seatsLeft = 0,
      this.seatsRight = 0,
      this.seatsBottom = 0,
      @JsonKey(ignore: true) this.isDragged = false,
      @JsonKey(ignore: true) this.newRectOffset = Rect.zero,
      @JsonKey(ignore: true) this.currentAction = CurrentEditAction.none})
      : super._();

  factory _$PlannerTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannerTableImplFromJson(json);

  @override
  @JsonKey(name: "real_id")
  final String id;
  @override
  final double left;
  @override
  final double top;
  @override
  final double width;
  @override
  final double height;
  @override
  @JsonKey()
  final int seatsTop;
  @override
  @JsonKey()
  final int seatsLeft;
  @override
  @JsonKey()
  final int seatsRight;
  @override
  @JsonKey()
  final int seatsBottom;
  @override
  @JsonKey(ignore: true)
  final bool isDragged;
  @override
  @JsonKey(ignore: true)
  final Rect newRectOffset;
  @override
  @JsonKey(ignore: true)
  final CurrentEditAction currentAction;

  @override
  String toString() {
    return 'PlannerTable(id: $id, left: $left, top: $top, width: $width, height: $height, seatsTop: $seatsTop, seatsLeft: $seatsLeft, seatsRight: $seatsRight, seatsBottom: $seatsBottom, isDragged: $isDragged, newRectOffset: $newRectOffset, currentAction: $currentAction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.seatsTop, seatsTop) ||
                other.seatsTop == seatsTop) &&
            (identical(other.seatsLeft, seatsLeft) ||
                other.seatsLeft == seatsLeft) &&
            (identical(other.seatsRight, seatsRight) ||
                other.seatsRight == seatsRight) &&
            (identical(other.seatsBottom, seatsBottom) ||
                other.seatsBottom == seatsBottom) &&
            (identical(other.isDragged, isDragged) ||
                other.isDragged == isDragged) &&
            (identical(other.newRectOffset, newRectOffset) ||
                other.newRectOffset == newRectOffset) &&
            (identical(other.currentAction, currentAction) ||
                other.currentAction == currentAction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      left,
      top,
      width,
      height,
      seatsTop,
      seatsLeft,
      seatsRight,
      seatsBottom,
      isDragged,
      newRectOffset,
      currentAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerTableImplCopyWith<_$PlannerTableImpl> get copyWith =>
      __$$PlannerTableImplCopyWithImpl<_$PlannerTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannerTableImplToJson(
      this,
    );
  }
}

abstract class _PlannerTable extends PlannerTable {
  factory _PlannerTable(
          {@JsonKey(name: "real_id") required final String id,
          required final double left,
          required final double top,
          required final double width,
          required final double height,
          final int seatsTop,
          final int seatsLeft,
          final int seatsRight,
          final int seatsBottom,
          @JsonKey(ignore: true) final bool isDragged,
          @JsonKey(ignore: true) final Rect newRectOffset,
          @JsonKey(ignore: true) final CurrentEditAction currentAction}) =
      _$PlannerTableImpl;
  _PlannerTable._() : super._();

  factory _PlannerTable.fromJson(Map<String, dynamic> json) =
      _$PlannerTableImpl.fromJson;

  @override
  @JsonKey(name: "real_id")
  String get id;
  @override
  double get left;
  @override
  double get top;
  @override
  double get width;
  @override
  double get height;
  @override
  int get seatsTop;
  @override
  int get seatsLeft;
  @override
  int get seatsRight;
  @override
  int get seatsBottom;
  @override
  @JsonKey(ignore: true)
  bool get isDragged;
  @override
  @JsonKey(ignore: true)
  Rect get newRectOffset;
  @override
  @JsonKey(ignore: true)
  CurrentEditAction get currentAction;
  @override
  @JsonKey(ignore: true)
  _$$PlannerTableImplCopyWith<_$PlannerTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
